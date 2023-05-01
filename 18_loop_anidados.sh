# ! /bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo:$fil _ $nombre"
    done
done