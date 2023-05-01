# ! /bin/bash
# Programa para "READ Validaciones de variables"
# By Alexander Jair Rojas Paria - Contact: alexjair@gmail.com

#Variables
option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción:$option , backupName:$backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"
