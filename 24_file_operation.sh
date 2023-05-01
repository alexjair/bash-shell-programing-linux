# ! /bin/bash
# Programa para ejemplificar las operaciones de un archivo
#Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

#crear nuevo directorio
echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

#hacer copia de todos los archivos de aqui a al nuevo directorio
echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

#mover el nuevo directorio a $HOME
echo -e "\nMover el directorio backupScripts a otra ubicaciÃ³n: $HOME"
mv backupScripts $HOME

#Eliminar los typefile txt del directorio actual
echo -e "\nEliminar los archivos .txt"
rm *.txt