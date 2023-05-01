#! /bin/bash
option=''
while :
do
#Limpieza de pantalla
clear
echo "_______________________"
echo "    Menu de opciones   "
echo "_______________________"
echo -e "\n"
echo "1. Instalar Postgres"
echo "2. Desinstalar Postgres"
echo "3. Crear un backup"
echo "4. Restaurar backup"
echo "5. empaquetar y comprimir "
echo "6. Enviar por ssh "
echo "7. Salir"
echo -e "\n"

read -n1 -p "Elija una Opcion :" option
echo -e "\n"


    case $option in
        1)
           echo "Instalando Postgres...."
           if [ -f  ~/logs/instalandoPostgres.log ]; then
              echo "El fichero ya existe...>> Agregando log "
              echo "$(date '+%F %H %M %S')  $(whoami)"  >> ~/logs/instalandoPostgres.log
              sleep 3
           else
              echo "el Fichero no existe > creando fichero "
              echo "$(date '+%F %H %M %S')  $(whoami)" > ~/logs/instalandoPostgres.log
              sleep 3
           fi
           ;;

        2)
           echo "Desinstalando Postgres"
           date '+%F %H %M %S' > ~/logs/DesinstalandoPosgtres.log
           sleep 3
           ;;

        3)
           echo "Crear Backup "
           date '+%F %H %M %S'> ~/logs/SacarRespaldo.log
           sleep 3
           ;;

        4)
           echo "Restaurar Backup "
           date '+%F %H %M %S' > ~/logs/RestaurandoRespaldo.log
           sleep 3
           ;;

        5)
           echo "Empaquetando y comprimiendo todos los logs "
           tar -cvf Logs.tar ~/logs
             if  [ -e Logs.tar ]; then
             echo "Comprimiendo el archivos  .... status OK!"
                gzip -9 Logs.tar
                sleep 3
             else
                echo "No se pudo comprimir... archivo logs.tar no encontrado "
             fi
            ;;

        6)echo "enviando por SSH "
           #rsync -avz $(pwd) userDestino@host(ip):direccionDestino
           sleep 3
          ;;

        7) echo "Saliendo "
           exit 0
           ;;
    esac
done