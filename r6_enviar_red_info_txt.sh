#!/bin/bash
# Programa que empaqueta, comprime, cifra y envía información a través de rsync

option="VariableOption"
result="VariableResult"
fecha=$(date +"%F_%H")
echo "El valor de option: $option" > logOption_$fecha.txt
echo "El valor de result: $result" > logResult_$fecha.txt

# Empaquetar y comprimir los logs generados
echo -e "\nIniciando el empaquetado y compresión con tar y gz....."
tar -czvpf logOption_$fecha.tar.gz logOption_$fecha.txt
tar -czvpf logResult_$fecha.tar.gz logResult_$fecha.txt
sleep 3

# Agregando cifrado con OpenSSL
echo -e "\nAgregando cifrado a logOption_$fecha.tar.gz"
openssl enc -aes-256-cbc -e -in logOption_$fecha.tar.gz -out logOption_$fecha.tar.gz.enc

echo -e "\nAgregando cifrado a logResult_$fecha.tar.gz"
openssl enc -aes-256-cbc -e -in logResult_$fecha.tar.gz -out logResult_$fecha.tar.gz.enc

# Creando carpeta de backup para mover y transferir
echo -e "\nMoviendo los archivos cifrados a una nueva carpeta....."
mkdir -m 755 bk_logs
mv logOption_$fecha.tar.gz.enc bk_logs
mv logResult_$fecha.tar.gz.enc bk_logs
sleep 3

# Pasar a un servidor remoto la carpeta bk_logs utilizando rsync
# Los archivos se envian a travez de SSH habilitar los host de backup con SSH
read -p "Ingrese host: " host
read -p "Ingrese usuario: " user

echo -e "\nTransfiriendo los archivos"
rsync -avz bk_logs $user@$host:/home/luna