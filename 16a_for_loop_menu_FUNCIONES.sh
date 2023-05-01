# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Alexander Jair Rojas Paria

function iterarListaNumeros   {
  arregloNumeros=(1 2 3 4 5 6)
  echo "Iterar en la Lista de Números"
  for num in ${arregloNumeros[*]}
  do
      echo "Número: $num"
  done
}

function iterarCadena {

  echo "Iterar en la lista de Cadenas"
  for nom in "Marco" "Pedro" "Luis" "Daniela"
  do
    echo "Nombre : $nom"
  done
}

function iterarArchivos {
  echo "Iterar en Archivos"
  for fil in *
  do
      echo "Nombre archivo: $fil"
  done
}

function iterarComando {
  echo "Iterar utilizando un comando"
  for fil in $(ls)
  do
      echo "Nombre archivo: $fil"
  done
}

function iteracionTradicional {
  echo "Iterar utilizando el formato tradcional"

  for ((i=1; i<10; i++))
  do
      echo "Número: $i"
  done
}

option=0

echo -e "\n elija una opcion
  1 iterar lista de numeros 
  2 iterar lista de cadenas
  3 iterar en Archivos
  4 iterar utilizando comando
  5 iteracion tradicional"

read -n1 option
echo -e "\n"

case $option in
  1) iterarListaNumeros ;;
  2) iterarCadena ;;
  3) iterarArchivos ;;
  4) iterarComando ;;
  5) iteracionTradicional;;
  *) echo "opcion desconocida";;
esac