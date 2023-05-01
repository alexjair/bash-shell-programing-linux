# ! /bin/bash
# Programa para ejemplificar el uso del Break y Continue

# Hola. He modificado un poco el codigo original del profesos haciendo los siguientes cambios:
# 
# Al momento de crear un respaldo si el directorio de Respaldo ingresado por el
# usuario no se encuentra se pregunta al Usuario si desea crear un directorio con
# el nombre inicial ingresado.
# En el modulo de Restaurar, cambie el orden de los condicionales ya que este
# orden no era el mas optimo. Si el usuario ingresa un Respaldo a Restaurar que no
# se encuentra el programa igual crea la BD en Postgres inclusive si no utiliza el
# respaldo que por supuesto NO fue encontrado lo cual no deberia suceder.
# Tambien agregue lineas de codigo para verificar si el directorio donde estan
# los .bak que es ingresado por el usuario existe. De ser asi entonces se listan
# los archivos .bak que alli se encuentran y de ese modo podemos escoger el .bak
# que deseamos restaurar.
# Por ultimo agregue al menu la opcion de listar BD en postgres para asi
# facilmente poder consultar sin tener que ir al terminal.

opcion=0
fechaActual=`date +%Y%m%d`

#Esta es la funcion instalar PostGres
instalar_postgres () {
 echo -e "\nVerificar si tenemos instalado PostGress..."
 sleep 3
 verifyInstall=$(which psql)
 if [ $? -eq 0 ]; then
     echo "PostGres ya se encuentra instalado en el equipo "
 else
      read -s -p "Introduzca password de administrador (sudo) " password
      read -s -p "Introduzca password a utilizar en PostGres " passwordPostgres
      echo "$password" | sudo -S apt update
      echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
      sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgres}';"
      echo "$password" | sudo -S systemctl enable postgresql.service
      echo "$password" | sudo -S systemctl start postgresql.service
 fi

 read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

#Esta es la funcion desinstalar PostGres
desinstalar_postgres () {
    echo -e "\nVerificando si ya esta Desinstalado Postgres..."
    verifyInstall=$(which psql)
    if [ $? -eq 1 ]; then
        echo " PostGres NO se encuentra instalado en el Equipo "
    else
        read -s -p "Introduzca password de administrador " password
        echo -e "\n"
        echo "$password" | sudo -S systemctl stop postgresql.service
        echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
        echo "$password" | sudo -S rm -r /etc/postgresql
        echo "$password" | sudo -S rm -r /etc/postgresql-common
        echo "$password" | sudo -S rm -r /var/lib/postgresql
        echo "$password" | sudo -S userdel -r postgres
        echo "$password" | sudo -S groupdel postgresql
fi

read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

#Esta es la funcion Sacar Respaldo
sacar_respaldo () {
echo "Listar las bases de datos..."
sudo -u postgres psql -c "\l"
read -p "Elegir la BD a respaldar: " bddRespaldo
echo -e "\n"
        if [ -d "$1" ]; then
                echo "Establecer permisos directorio"
                echo "$password" | sudo -S chmod 755 $1
                echo "Realizando respaldo..."
                sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
                echo "Respaldo realizado Correctamente en la ubicacion: $1/bddRespaldo$fechaActual.bak"
        else
                echo -e  "\nEl directorio $1 No Existe"
                echo -e "\n"
                read -n1 -p "Desea crear el directorio $1 (s/n)" respbdd
                if [ $respbdd = "s" ]; then
                        sudo mkdir $1
                        echo "$password" | sudo -S chmod 755 $1
                        echo -e "\nRealizando respaldo..."
                        sleep 3
                        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
                        echo "Respaldo realizado Correctamente en la ubicacion: $1/bddRespaldo$fechaActual.bak"
                else
                        echo -e "\nSaliendo sin realizar Respaldo..."
                        sleep 3
                fi

                fi

read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

#Esta es la funcion Restaurar Respaldo
restaurar_respaldo () {
read -p "Ingresar el directorio donde se encuentran los respaldos   " directorioBackup
if [ -d $directorioBackup ]; then

echo "Listando los archivos de Respaldos..."
sleep 3
ls -la $directorioBackup
read -p "Ingresar el archivo .bak a restaurar:  " respaldoRestaurar
#echo -e "\n"
if [ -f "$directorioBackup/$respaldoRestaurar" ]; then

        read -p "Ingresar nombre BD destino:  " bdDestino
        verifyBdd= $(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bdDestino)
        if [ $? -eq 0 ]; then
                  echo "Restaurando en la Base de Datos destino...$bdDestino"
                  sudo -u postgres pg_restore -Fc -d $bdDestino "$directorioBackup/$respaldoRestaurar"
                  echo "Listar Bases de datos..."
                  sudo -u postgres psql -c "\l"
           else
                  echo  "La BD destino no se encuentra..."
                  echo  "Creando Base de Datos destino..."
                  sleep 4
                  sudo -u postgres psql -c "CREATE DATABASE $bdDestino"
                  sudo -u postgres pg_restore -Fc -d $bdDestino "$directorioBackup/$respaldoRestaurar"
                  echo "Listar Bases de datos..."
                  sudo -u postgres psql -c "\l"
          fi

else
        echo "No se encuentra el archivo de Respaldo Ingresado"
        echo "Verifique nuevamente el nombre y vuelva a intentarlo..."
fi
else
        echo "No se encuentra el directorio de Respaldos ingresado..."
        echo "Verifique nuevamente el nombre y vuelva a intentarlo..."
fi

read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

lista_de_BD(){

echo -e  "\Las Bases de Datos Actuales: "
sudo -u postgres psql -c "\l"
read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "----------------------------------------"
    echo "PGUTIL - Programa de Utilidades PostGres"
    echo "----------------------------------------"
    echo "           MENU PRINCIPAL               "
    echo "----------------------------------------"
    echo "1.Instalar Postgres                     "
    echo "2.Desinstalar Postgres                  "
    echo "3.Hacer un respaldo                     "
    echo "4.Restaurar respaldo                    "
    echo "5.Listar Bases de Datos Actuales        "
    echo "6.Salir                                 " 

    #Leer los datos del Usuario - Capturar  Opcion
    read -n1 -p "Ingrese una opcion [1-5]: " opcion

    #Validar la opcion ingresada
    case $opcion in

        1) instalar_postgres

          #sleep 3
            ;;

        2) desinstalar_postgres

           #sleep 3
            ;;

        3)  echo -e "\n"
            read -p "Indique Directorio: " directorioBackup
            sacar_respaldo $directorioBackup


            ;;

        4)  echo -e "\n"
            #read -p "Indique Directorio de Respaldos " directorioRespaldos
            restaurar_respaldo $directorioRespaldos


            ;;

        5) lista_de_BD
            ;;

        6) echo -e "\nSaliendo del programa...."
            exit 0
            ;;
    esac
done