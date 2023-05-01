# ! /bin/bash
# Programa para "Captura de Variables del Usuario"
# By Alexander Jair Rojas Paria - Contact: alexjair@gmail.com

#Variables

option=0
backupName=""

#main

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY

echo "Ingresar el nombre del archivo backup:"
echo -n "Ingresar una opcion:"
read
backupName=$REPLY

echo "Opcion: $option , BackupName: $backupName"