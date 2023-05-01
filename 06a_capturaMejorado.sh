# ! /bin/bash
# Programa para "Captura de Variables del Usuario"
# By Alexander Jair Rojas Paria - Contact: alexjair@gmail.com

#Variables
option=0
backupName=""

#main
echo "Programa Utilidades Postgres"
read -p "Ingresar una opcion:" option
read -p "Ingresar el nombre del archivo backup:" backupName

echo "Opcion: $option , BackupName: $backupName"