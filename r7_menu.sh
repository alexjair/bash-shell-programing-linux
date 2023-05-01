# !/bin/bash
# Reto 7
# Menu de opciones que imprime la opción seleccionada

option=0

actual_processes(){
    echo -e "\nProcesos Actuales:"
    ps -ef
    echo "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

memory_available(){
    echo -e "\nMemoria disponible actualmente"
    free -mth
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

available_disk_space(){
    echo -e "\n"
    df -h
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

network_info(){
    # si no esta instalado ipconfig
    # sudo apt install net-tools
    ifconfig -v | cowsay -W 100
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

configured_environment_variables(){
    echo -e "\n"
    printenv | cowsay -W 100
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

program_info(){
    echo -e "\nPrograma que te permite conocer
    información importante acerca de tu equipo\n" | cowsay -d
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

backup_info(){
    tar -cvf log.tar log.txt
    bzip2 -f log.tar
    zip -e log.zip log.tar.bz2
    usuario=""
    host=""
    echo "A continuación ingresará los datos de envío"
    read -p "Ingresar el host: " host
    read -p "Ingresar el usuario: " usuario
    echo -e "\nEn éste momento se procederá a empaquetar la carpeta y transferirla según los datos ingrasados"

    rsync -avz $(pwd) $usuario@$host:/home/juan
}

while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menú de opciones
    echo "--------------------------------------------"
    echo "PCUTIL - Programa de utilidad para tu equipo"
    echo "--------------------------------------------"
    echo "               MENU PRINCIPAL               "
    echo "--------------------------------------------"
    echo "1. Procesos Actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de Red"
    echo "5. Variables de Entorno Configuradas"
    echo "6. Información del Programa"
    echo "7. Backup de información"
    echo "8. Salir"

    # Leer los datos del usuario
    read -n1 -p "Ingrese una opción [1-8]: " option

    # Validar la opción ingresada

    case $option in
        1)
            echo -e "\nMostrar Procesos Actuales....."
            actual_processes
            ;;
        2)
            echo -e "\nMostrar Memoria Disponible....."
            memory_available
            ;;
        3)
            echo -e "\nMostrar Espacio en Disco....."
            available_disk_space
            ;;
        4)
            echo -e "\nInformación de Red....."
            network_info
            ;;
        5)
            echo -e "\nVariables de Entorno Configuradas....."
            configured_environment_variables
            ;;
        6)
            echo -e "\nInformación del Programa....."
            program_info
            ;;
        7)
            echo -e "\nRealizando Backup de información....."
            backup_info
            ;;
        8)
            echo -e "\nSalir del Programa....."
            exit 0
            ;;
        *)
            echo "Elige una opción válida"
            ;;
    esac
done