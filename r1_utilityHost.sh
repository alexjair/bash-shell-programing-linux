# ! /bin/bash
# Programa para "Reto para UtilityHost.hs"
# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

#Variables

x=$1
y=$2
opcion=10
result=200

#main

echo "Imprimir Opcion : $opcion"
echo "Imprimir Result : $result"
echo -e "Ver los Usar los valores ingresados.."

echo "Result {Opcion + $1) : $((opcion+x))"
echo "Result {Result + $2) : $((result+y))"

echo -e "Que te parecio el Programa?.."
read parecio

echo -e "Que bueno te que te parecio esto..: $parecio"