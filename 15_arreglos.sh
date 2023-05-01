# ! /bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: Alexander Jair Rojas Paria

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Numeros:${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de Numeros:${arregloRangos[*]}"

#Imprimir los tamaÃ±os de los arreglos
echo "TamaÃ±o Arreglo de Numeros:${#arregloNumeros[*]}"
echo "TamaÃ±o Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "TamaÃ±o Arreglo de Numeros:${#arregloRangos[*]}"

#Imprimir la posiciÃ³n 3 del arreglo de Numeros, cadenas de rango
echo "PosiciÃ³n 3 Arreglo de Numeros:${arregloNumeros[3]}"
echo "PosiciÃ³n 3 Arreglo de Cadenas:${arregloCadenas[3]}"
echo "PosiciÃ³n 3 Arreglo de Rangos:${arregloRangos[3]}"

#AÃ±adir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Numeros:${arregloNumeros[*]}"
echo "TamaÃ±o arreglo de Numeros:${#arregloNumeros[*]}"