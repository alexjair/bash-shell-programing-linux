# ! /bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Alexander Jair Rojas Paria

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "r1_verDatosPC.sh" ]; then
            echo "Archivo encontrado!!!!!!-->"
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done