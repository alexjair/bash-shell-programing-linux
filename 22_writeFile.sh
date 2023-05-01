# ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

# información:
# EOM: End Of Message
# EOF: End Of File
# Para escribir en un archivo podemos utilizar >> y >
# >> : si no existe el archivo, se creará, si existe, se agregara al final del archivo.
# > : si no existe el archivo, se creara, si existe, será reemplazado
# cat <<EOF>>{ficheroDondeEscribo.txt}
#        linea 1..
#        linea 2..
#        linea 3..
# EOF


echo "Escribir en un archivo"
echo "Valores escritos con el comando echo" >> $1

#Adición multilínea
cat <<EOM >>$1
$2
EOM
