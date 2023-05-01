#! bin/bash
#Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.
#Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

#variables

RegexNombres='^[a-zA-Z]([a-zA-Z ]){2,}$'
RegexApellidos='^[a-zA-Z]([a-zA-Z ]){2,}$'
RegexEdad='^[1-9][0-9]$'
RegexDireccion='^[\w .#]{2,}$'
RegexNumTelefono='^[0-9 ]{6,11}$'
RegexNumCelular='^[0-9 ]{8,11}$'

echo "Ingresa los datos de Persona"
read -p "Ingresa Nombre: " name
read -p "Ingresa Apellidos: " apell
read -p "Ingresa edad: " edad
read -p "Ingresa Direccion: " direc
read -p "Ingresa Telefono: " telef
read -p "Ingresa Celular: " celu

#main

if [[ $edad =~ $RegexEdad ]]; then
        echo "Edad: $edad valido"
else
        echo "Edad: $edad invalido"
fi

if [[ $telef =~ $RegexNumTelefono ]]; then
        echo "Telefono: $telef valido"
else
        echo "Telefono: $telef invalido"
fi

if [[ $celu =~ $RegexNumCelular ]]; then
        echo "Celular: $celu valido"
else
        echo "Celular: $celu invalido"
fi

if [[ $direc =~ $RegexDireccion ]]; then
        echo "Direccion: $direc valido"
else
        echo "Direccion: $direc invalido"
fi

if [[ $apell =~ $RegexApellidos ]]; then
        echo "Apellidos: $apell valido"
else
        echo "Apellidos: $apell invalido"
fi

if [[ $name =~ $RegexNombres ]]; then
        echo "Nombres: $name valido"
else
        echo "Nombres: $name invalido"
fi

