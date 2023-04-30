# !/bin/bash
# Script to initialize variables and print their values
# Autor: Alexander Jair Rojas Paria

logoinfo=$(neofetch)
option=$(hostnamectl)
result=$(df -h)
partitions=$(lsblk)

echo "El Logo del SO es: \n $logoinfo"
echo "\n \n La informacion del SO es: \n $option"
echo "\n \n La informacion general de las particiones del sistema son: \n $result"
echo "\n \n Las particiones de mi computador son: \n $partitions"