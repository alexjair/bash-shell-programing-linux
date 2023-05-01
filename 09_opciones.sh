# ! /bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con sin parÃ¡metros
# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

echo "Programa Opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opcion enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utlizada";;
*) echo "$! no es una Opcion";;
esac
shift
done