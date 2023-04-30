#! bin/bash
# (1[9-9]|2[0-0])([0-9]{2})(0[1-9]|1[1-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])

regexNum='^[0-9]{10}$' #valida numeros de longitud 10
paisRegex='^EC|COL|US$'
dateRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$' #valida >

echo "Expresiones Regulares"
read -p "Ingresa un Id: " id
read -p "Ingresa las Iniciales del Pais: " pais
read -p "Ingresa una fecha yyyymmdd: " date

#Validamos la informacion

if [[ $id =~ $regexNum ]]; then
        echo "ID: $id valido"
else
        echo "ID: $id invalido"
fi

if [[ $pais =~ $paisRegex ]]; then
        echo "Pais: $pais valido"
else
        echo "Pais: $pais invalido"
fi

if [[ $date =~ $dateRegex ]]; then
        echo "Fecha: $date valida"
else
        echo "Fecha: $date invalida"
fi
