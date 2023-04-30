# !/bin/bash
# Reto 1 Curso de programacion en bash shell
# autor: Alexander Jair - alexjair@gmail.com

echo "El siguiente codigo realiza un ping a www.platzi.com 10 veces y guarda la salida en un archivo de txt"
option=$(ping -c 10 platzi.com > /home/alexjair/shellCourse/reto.txt)
result=$(head -n 20 reto.txt && pwd; ls -lh reto.txt)
echo "\nEl Resultado fue: $result"
