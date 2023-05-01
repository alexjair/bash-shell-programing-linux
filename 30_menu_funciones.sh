Las funciones se declaran arriba;
# ! /bin/bash
# Programa que permite manejar las utilidades de Postres
# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

opcion=0

# FunciÃ³n para instalar postgres
instalar_postgres () {
    echo "Instalar postgres..."
}

# FunciÃ³n para desinstalar postgres
desinstalar_postgres () {
    echo "Desinstalar postres..."
}

# FunciÃ³n para sacar un respaldo
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Directorio backup: $1"
}

# FunciÃ³n para restaurar un respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio respaldo: $1"
}


while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menÃº de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "                MENU PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar informaciÃ³n
    read -n1 -p "Ingrese una opcion [1-5]:" opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            instalar_postgres
            sleep 3
            ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio Backup:" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4) 
            read -p "Directorio de Respaldos:" directorioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
            ;;
        5)  
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done   
