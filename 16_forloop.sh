# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteraciÃ³n for
# Autor: Alexander Jair Rojas Paria

arregloNumeros=(1 2 3 4 5 6)

read -p "Iterar en la Lista de NÃºmeros"
for num in ${arregloNumeros[*]}
do
    echo "NÃºmero:$num"
done

read -p "Iterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres:$nom"
done

read -p "Iterar en Archivos"
for fil in *
do
    echo "Nombre archivo:$fil"
done

read -p "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "Nombre archivo:$fil"
done

read -p "Iterar utilizando el formato tradcional"
for ((i=1; i<10; i++))
do
    echo "NÃºmero;$i"
done