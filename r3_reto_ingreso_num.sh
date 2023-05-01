#! bin/bash
#Reto 3:
#Solicitar que se ingrese un valor del 1 al 5.
#Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.
#Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.

#Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

#variables
regexNum = "^[1-5]{1}$"

#main
read -p "Ingrese el numero del {1 al 5}:" num

if [[ $num =~ $regexNum ]]; then
        
        if [[ $num -eq 1 ]]; then
            echo "Elegiste el Num. 1"
        elif  [[ $num -eq 2 ]]; then
            echo "Elegiste el Num. 2"
        elif  [[ $num -eq 3 ]]; then
            echo "Elegiste el Num. 3"
        elif  [[ $num -eq 4 ]]; then
            echo "Elegiste el Num. 4"
        elif  [[ $num -eq 5 ]]; then
            echo "Elegiste el Num. 5"
        fi
else
        echo  "Error al ingresar el $num"
fi
