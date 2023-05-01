# ! /bin/bash
# Escribir la información solicitada a un archivo de log
# cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos
# y SS los segundos
# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

# variables
# fecha=`date +%Y%m%d%H%M%S`
# usuario=$(logname)
# archivo=log-`date +%Y%m%d%H%M%S`.log
user=$USER
# date=$(date +%Y_%m_%d__%H:%M:%S)

nombreArchivo="$(date +%Y_%m_%d_%H_%M_%S)_$user.txt"
infoArchivo="$(date +%Y-%m-%d_%H:%M:%S) $USER"

# main
# echo "$fecha $usuario $archivo $user $date"
# echo "$nombreArchivo $infoArchivo"

echo $infoArchivo >> $nombreArchivo
ls -la $nombreArchivo
cat $nombreArchivo
