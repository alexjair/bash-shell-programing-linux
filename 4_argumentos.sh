# ! /bin/bash
# Programa para ejeplificacar el paso de argumentos
# Autor: Alexander Jair Rojas - alexjair@gmail.com

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso"
echo "El horario del curso es: $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"