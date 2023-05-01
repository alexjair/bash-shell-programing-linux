# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisiÃ³n if, else if, else
# Autor: Ing. Alexander Jair Rojas Paria - alexjair@gmail.com

edad=0

echo "Ejemplo Sentencia If -else"
read -p "Indique cÃºal es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi


