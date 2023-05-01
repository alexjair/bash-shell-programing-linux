# !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su paÃ­s:" pais
read -p "Ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones Condicionales con nÃºmeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un niÃ±o o niÃ±a"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del Sur de AmÃ©rica"
else
    echo "Se desconoce la nacionalidad"
fi



echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else 
    echo "El directorio $pathArchivo no existe"
fi    
\