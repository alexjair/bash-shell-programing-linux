# 🐱‍🐉 Bash-Shell-Programing
🖥 Programación en Bash Shell en el servidor de Ubuntu Linux, se crearan script .hs para la ejecución, para administración e instalación de Postgress e automatitación de procesos.

- Email: alexjair@gmail.com
- By Alexaneder Jair Rojas Paria

-----------

# **➕Programación en Bash Shell**


# **Introducción Shell **


## **Componentes Linux, Tipos Shell y Comandos de información**

Linux tiene 3 partes principales:



* **Kernel**: Es el núcleo del Sistema Operativo y se gestionan los recursos de hardware como la memoria, el procesamiento y los dispositivos periféricos conectados al computador.
* **Shell**: Es el intérprete, un programa con una interfaz de usuario permitiendo ejecutar las aplicaciones en un lenguaje de alto nivel y procesarlas en un lenguaje de bajo nivel para manipular y controlar aplicaciones y programas como nuestro proyecto.
* Aplicaciones: Son las aplicaciones con las que interactuamos día a día.

Tipos de Shells:



* SH
* KSH
* CSH
* BASH


## **Bash scripting (VIM config)**

Configurar el editor Vim.


![alt_text](images/image1.png "image_tooltip")


Nos ubicamos en el HOME (En el directorio de usuario)

**cd $home**

Creamos el archivo llamado .vimrc con el comando: 

**vim .vimrc**

Para insertar/ escribir

Presionamos la tecla i para editar, ponemos: 

**set showmode**

**set autoindent**

**set tabstop=4**

**set expandtab**

**syntax on**

Presionamos :wq para salir y guardar

**ESC**

**:wq**

Lo podemos ver con el comando cat

**cat .vimrc**


![alt_text](images/image2.png "image_tooltip")



## **Primer Script y EJEUTAR**


### **1_utilityPostgres.sh**

Nos ubicamos en el Home

**cd $home**

verificamos 

**pwd**

Creamos una carpeta 

**mkdir shellCourse**

**cd shellCourse/**

Creamos el 1er script

**vim 1_utilityPostgres.sh**

Editamos

**# !/bin/bash **


    **# Programa para realizar algunas operaciones utilitarios de Postgres **


    **echo "Hola bienvenido al curso de Programación bash"**


    **:wq**

Lo vemos con cat


![alt_text](images/image3.png "image_tooltip")


Agregar los permisos de Ejecución (X) para procesar el sh

**chmod +x 1_utilityPostgres.hs**

ver los permisos

**ls -l 1_utilityPostgres.hs**

Ejecutar



* **bash 1_utilityPostgres.hs**
* **./1_utilityPostgres.hs**


![alt_text](images/image4.png "image_tooltip")



## **Script “Nombre único”**

Antes de ejecutar un script, hay que verificar si el **nombre único** y **ubicación** del archivo del hs ya esta utilizado en otro sistema, con eso es el comando type:

**type -t {nombre-archivo|palabra-reservada}**

**type {nombre-archivo|palabra-reservada}**


## **Permisos Archivos, Grupos, Global, All**

El comando **chmod +x** es la forma rápida de dejar un archivo con permisos de ejecución. Si tienes problemas de memoria quizás sea el opción más fácil, en lugar de usar el típico **chmod 7XX** o similar.

Agregar permisos de lectura: **chmod +r {nombre-archivo}** \
Agregar permisos de escritura: **chmod +w {nombre-archivo}**

Quitar permisos de lectura: **chmod -r {nombre-archivo}** \
Quitar permisos de escritura: **chmod -w {nombre-archivo}** \
Quitar permisos de ejecución: **chmod -x {nombre-archivo}**

En caso de querer cambiar los permisos del grupo y otros ( el comando es similar al ejemplo anterior, sin embargo esta vez se agregar una **“g” para grupo** o una **“o” para otros)**

**chmod g+w {nombre-archivo} \
chmod g-wx {nombre-archivo} \
chmod o+w {nombre-archivo} \
chmod o-wx {nombre-archivo}**

por último para cambiar para todos: 

**chmod ugo+rwx** 



* Dará permisos de lectura, escritura y ejecución a todos, esto es equivalente a chmod 777


![alt_text](images/image5.png "image_tooltip")



# **Programación Shell Básica**


## **Declaración Variables (Entorno)**

Ir al directorio

**vim /etc/profile**

Agregar al archivo al final


    **#variables de entorno**


    **COURSE_NAME=Programacion Bash**


    **export COURSE_NAME**


![alt_text](images/image6.png "image_tooltip")


Las variables de entorno se reflejan a reboot de sistema.


## **Variables y Alcance en Bash Shell**

Ejecutar el script

ver nuestro directorio si estamos en home

**pwd**

ubicamos en carpeta de scripts

**cd shellCourse/**


### **2_variables.sh**

creamos un nuevo bash

**vim 2_variables.sh**


    # !/bin/bash # Programa para revisar la declaración de variables 


    # Autor: Marco Toscano Freire - @martosfre opcion=0 


    **nombre=Marco **


    **echo "Opción: $opcion y Nombre: $nombre" **


    # Exportar la variable nombre para que este disponible a los demás procesos 


    **export nombre **


    # Llamar al siguiente script para recuperar la variable 


    **./2_variables_2.sh**


![alt_text](images/image7.png "image_tooltip")


Donde se activaron las variables a nivel del programa.

Dar permisos al archivo bash

**chmod +x 2_variables.hs**

ver los permisos

**ls -l 2_variables.hs**

Ejecutar



* **bash 2_variables.hs**
* **./2_variables.hs**


![alt_text](images/image8.png "image_tooltip")



### **2_variables_2.sh**

Copiar el bach

**cp 2_variables.sh 2_variables_2.sh**



* Al haber copiado el hs, los permisos tb se heredan

Editamos el bash 2

**vim 2_variables_2.sh**


    # !/bin/bash 


    # Programa para revisar la declaración de variables 


    # Autor: Marco Toscano Freire - @martosfre 


    **echo "Opción nombre pasada del script anterior: $nombre"**

Lo ejecutamos



* **bash 2_variables.hs**


![alt_text](images/image9.png "image_tooltip")



## **Tipos de Operadores**


### **3_tipoOperadores.sh**


    **# ! /bin/bash**


    **# Programa para revisar los tipos de operadores**


    **# Autor: Alexander Jair Rojas - alexjair@gmail.com**


    numA=10


    numB=4


    echo "-- Operadores Aritmeticos --"


    echo "Numeros: A=$numA y B=$numB"


    echo -e


    echo "Sumar A + B =" $((numA + numB))


    echo "Resta A - B =" $((numA - numB))


    echo "Multi A * B =" $((numA * numB))


    echo "Divid A / B =" $((numA / numB))


    echo "Resid A % B =" $((numA % numB))


    echo -e "\n-- Operadores Relaciones --"


    echo "Numeros: A=$numA y B=$numB"


    echo -e


    echo "A .> B =" $((numA > numB))


    echo "A .&lt; B =" $((numA &lt; numB))


    echo "A >= B =" $((numA >= numB))


    echo "A &lt;= B =" $((numA &lt;= numB))


    echo "A == B =" $((numA == numB))


    echo "A != B =" $((numA != numB))


    echo -e "\n-- Operadores Asignacion: --"


    echo "Numeros: A=$numA y B=$numB"


    echo -e


    echo "Sumar A += B" $((numA += numB))


    echo "Resta A -= B" $((numA -= numB))


    echo "Multi A *= B" $((numA *= numB))


    echo "Divid A /= B" $((numA /= numB))


    echo "Resid A %= B" $((numA %= numB))


## **Script con Argumentos**


![alt_text](images/image10.png "image_tooltip")



### **4_argumento.hs**


    **# ! /bin/bash**


    **# Programa para ejeplificacar el paso de argumentos**


    **# Autor: Alexander Jair Rojas - alexjair@gmail.com**


    nombreCurso=**$1**


    horarioCurso=**$2**


    echo "El nombre del curso es: $**nombreCurso**"


    echo "El horario del curso es: $**horarioCurso**"


    echo "El numero de parametros enviados es: **$#**"


    echo "Los parametros enviados son:** $*"**

Ejecutar el script con parametros:

**./4_argumento.hs "programacion bash" "5:pm"**


![alt_text](images/image11.png "image_tooltip")



## **Sustitución de Comandos en variables**


![alt_text](images/image12.png "image_tooltip")


Ejemplo: 


### **5_suBtitucionCommand.hs**


    # ! /bin/bash


    # Programa para "Sustitucion de comandos"


    # By Alexander Jair Rojas Paria - Contact: alexjair@gmail.com


    #Variables


    **ubicacionActual=`pwd`**


    **infoKernel=$(uname -a)**


    #main


    **echo "La ubicacion Actual ejec->'pwd' : $ubicacionActual"**


    **echo "Informacion del Kernel ejec->'(uname -a)' : $infoKernel"**

Ejecución:


![alt_text](images/image13.png "image_tooltip")



## **Debug en Script**

Depuración de código bash.


![alt_text](images/image14.png "image_tooltip")


Ejecutamos los comandos en el ejemplos:

** bash -x 5_suBtitucionCommand.hs**

** bash -v 5_suBtitucionCommand.hs**


![alt_text](images/image15.png "image_tooltip")



# **Script Interactivos (READ)**


## Capturar información usuario

captura de variables con en comando read, echo, reply. Unas de las opciones más utilizadas para **Read**:

**-p**: Permite ingresar una frase o prompt antes de pedir el dato. \
**-s**: Modo Sigiloso. No muestra ningún carácter en la terminal, útil para contraseñas.. \
**-n** [num]: Permite leer como máximo n caracteres. \
**-r**: Toma el botón de retroceso o backspace como un carácter y no borra ningún otro carácter previamente escrito.


### **6_capturaVariablesUsuario**.sh


    **# ! /bin/bash**


    **# Programa para "Captura de Variables del Usuario"**


    **# By Alexander Jair Rojas Paria - Contact: alexjair@gmail.com**


    #Variables


    **option**=0


    **backupName**=""


    #main


    echo "Programa Utilidades Postgres"


    echo -n "Ingresar una opcion:"


    read


    option=$**REPLY**


    echo "Ingresar el nombre del archivo backup:"


    echo -n "Ingresar una opcion:"


    read


    backupName=$**REPLY**


    echo "Opcion: $**option** , BackupName: $**backupName**"


### **7_read**.sh


    **# ! /bin/bash**


    **# Programa para "Captura de Variables del Usuario"**


    **# By Alexander Jair Rojas Paria - Contact: alexjair@gmail.com**


    **#Variables**


    option=0


    backupName=""


    **#main**


    echo "Programa Utilidades Postgres"


    read -p "Ingresar una opcion:" option


    read -p "Ingresar el nombre del archivo backup:" backupName


    echo "Opcion: $option , BackupName: $backupName"


## **Expresiones Regulares**

Tomando en cuenta estos criterios se realizará un programa que valida la siguiente información: \
	Número de Identificación de un tamaño de 10 números. 


    Ejemplo: 1717836520 \
País de Origen denotado por dos letras en un rango específico. 


    Ejemplo: EC, CO, US \
Fecha de Nacimiento en el formato yyyyMMDD. 


    Ejemplo: 20181222


### **r1_expresiones_regulares**.sh

**#! bin/bash**

**regexNum**='^[0-9]{10}$' #valida numeros de longitud 10

**paisRegex**='^EC|COL|US$'

**dateRegex**='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$' #valida >

echo "Expresiones Regulares"

read -p "Ingresa un Id: " id

read -p "Ingresa las Iniciales del Pais: " pais

read -p "Ingresa una fecha yyyymmdd: " date

**#Validamos la informacion**

if [[ $id =~ $**regexNum** ]]; then

        echo "ID: $id valido"

else

        echo "ID: $id invalido"

fi

if [[ $pais =~ $**paisRegex** ]]; then

        echo "Pais: $pais valido"

else

        echo "Pais: $pais invalido"

fi

if [[ $date =~ $**dateRegex** ]]; then

        echo "Fecha: $date valida"

else

        echo "Fecha: $date invalida"

fi


## Validar información

Para el control e validar información

**-n**

Entonces:



* **read -s **: Oculta la información entrante por el propio usuario.
* **read -n{1,2,3,4…}** : Mantiene la línea de ejecución, la misma línea en la que estamos hasta que llegue al número de carácteres definido.
* **read -p** : Indica que hay que dejar la información ingresada en la variable siguiente.


### **8_ReadValidar**.sh


    **# ! /bin/bash**


    **# Programa para "READ Validaciones de variables"**


    **# By Alexander Jair Rojas Paria - Contact: alexjair@gmail.com**


    **#Variables**


    option=0


    backupName=""


    clave=""


    echo "Programa Utilidades Postgres"


    **# Acepta el ingreso de información de solo un caracter**


    read -**n1** -p "Ingresar una opción:" option


    echo -e "\n"


    read -**n10** -p "Ingresar el nombre del archivo del backup:" backupName


    echo -e "\n"


    echo "Opción:$option , backupName:$backupName"


    read **-s** -p "Clave:" clave


    echo "Clave: $clave"


## **Paso de parámetros y opciones**

Tenemos que tener en cuenta que: \
**shift **lo que hace es eliminar **$1** y pasa **$2** a ser **$1**, la siguiente vez, elimina $2 y pasa $3 a $1, y así sucesivamente. \
Y también tenemos que tener en cuenta que **[ -n “$1” ]** el **-n** implica que es cierto mientras $1 no sea ni vacío ni nulo, es decir mientras exista y sea distinto de vacío.

**# !/bin/bash**


    **# Programa paso de opciones con o sin parámetros**


    **# Autor: JRPF - Dic - 2022**


    clear


    echo -e "\nPrograma opciones"


    echo -e "Opción 1 enviada : $1"


    echo -e "Opción 2 enviada : $2"


    echo -e "Opciones enviadas: $*"


    echo -e "\n"


    echo -e "\nRecuperar valores"


    i=0


    **while **[ -n "$1" ]


    do


            (( i +=1 ))


            case "$1" in


                    -a) echo "$i -> -a option utilizada";;


                    -b) echo "$i -> -b option utilizada";;


                    -c) echo "$i -> -b c option utilizada";;


                    *) echo "$i -> $1 no es una opción válida";;


            esac


    **shift**


    done


## Descargar de Internet

**# !/bin/bash**

**# Programa para ejemplificar el uso de la descarga de informaciÃ³n desde internet utilizando el comando wget**

**# Autor: Marco Toscano Freire - @martosfre**

echo "Descargar informaciÃ³n de internet"

**wget **https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.35/bin/apache-tomcat-8.5.35.zip


# **Condicionales**


## Sentencias If/Else

OPERADORES RELACIONALES

**-eq**: is equal to // Igual a

**-ne**: is not equal to // No es igual a

**-gt**: is greater than // Mayor a

**-ge**: is greater than or equal to // Mayor o igual a

**-lt**: is less than // Menor a

**-le**: is less than or equal to // Menor o igual a

11b_if_else_elif.sh


    **# !/bin/bash**


    **# Programa para ejemplificar el uso de la sentencia de decisiÃ³n if, else if, else**


    **# Autor: Ing. Alexander Jair Rojas Paria - alexjair@gmail.com**


    **edad**=0


    echo "Ejemplo Sentencia If -else"


    read -p "Indique cÃºal es su edad:" **edad**


    **if **[ $edad **-le** 18 ]; **then**


        echo "La persona es adolescente"


    **elif **[ $edad -ge 19 ] **&&** [ $edad -le 64 ]; **then**


        echo "La persona es adulta"


    **else**


        echo "La persona es adulto mayor"


    **fi**


## If Anidados


![alt_text](images/image16.png "image_tooltip")



    **# !/bin/bash**


    **# Programa para ejemplificar el uso de los ifs anidados**


    **# Autor: Marco Toscano Freire - @martosfre**


    **notaClase**=0


    **continua**=""


    echo "Ejemplo Sentencia If -else"


    read -n1 -p "Indique cual es su nota (1-9):" notaClase


    echo -e "\n"


    **if **[ **$notaClase** -ge 7 ]**; then**


        echo "El alumno aprueba la materia"


        read -p "Si va continuar estudiando en el siguiente nivel (s/n):" **continua**


        **if **[ **$continua** = "s" ]**; then**


            echo "Bienvenido al siguiente nivel"


        **else**


            echo "Gracias por trabajar con nosotros, mucha suerte !!!"


    **    fi **   


    **else**


        echo "El alumno reprueba la materia"


    **fi**


## Expresiones Condicionales


    **# !/bin/bash**


    **# Programa para ejemplificar el uso de expresiones condicionales**


    **edad**=0


    **pais**=""


    **pathArchivo**=""


    read -p "Ingrese su edad:" **edad**


    read -p "Ingrese su pai­s:" **pais**


    read -p "Ingrese el path de su archivo:" **pathArchivo**


    echo -e "\nExpresiones Condicionales con numeros"


    **if **[ $edad -lt 10 ]; then


        echo "La persona es un niño o niña"


    **elif **[ $edad -ge 10 ] && [ $edad -le 17 ]; then


        echo "La persona se trata de un adolescente"


    **else**


        echo "La persona es mayor de edad"


    **fi**


    echo -e "\nExpresiones Condicionales con cadenas"


    **if **[ $pais = "EEUU" ]; then


        echo "La persona es Americana"


    **elif **[ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then


        echo "La persona es del Sur de America"


    else


        echo "Se desconoce la nacionalidad"


    **fi**


    echo -e "\nExpresiones Condicionales con archivos"


    if [ -d $pathArchivo ]; then


        echo "El directorio $pathArchivo existe"


    else 


        echo "El directorio $pathArchivo no existe"


    fi   


## Sentencias Case


![alt_text](images/image17.png "image_tooltip")



    **# !/bin/bash**


    **# Programa para ejemplificar el uso de la sentencia case**


    **# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com**


    **opcion**=""


    echo "Ejemplo Sentencia Case"


    read -p "Ingrese una opción de la A - Z:" opcion


    echo -e "\n"


    **case **$**opcion** in


        **"A"**) echo -e "\nOperación Guardar Arhivo"**;;**


       ** "B"**) echo "Operación Eliminar Archivo"**;;**


        **[C-E]**) echo "No esta implementada la operación"**;;**


       ** "*"**) "Opción Incorrecta"


    **esac ** 


# **Iteración**


## Arreglos


## FOR loop


![alt_text](images/image18.png "image_tooltip")



    **# ! /bin/bash**


    **# Programa para ejemplificar el uso de la sentencia de iteraciÃ³n for**


    **# Autor: Alexander Jair Rojas Paria**


    arregloNumeros=(1 2 3 4 5 6)


    read -p "Iterar en la Lista de NÃºmeros"


    **for **num in **${arregloNumeros[*]}**


    do


        echo "NÃºmero:$num"


    done


    read -p "Iterar en la lista de Cadenas"


    **for **nom in **"Marco" "Pedro" "Luis" "Daniela"**


    do


        echo "Nombres:$nom"


    done


    read -p "Iterar en Archivos"


    **for **fil in *****


    do


        echo "Nombre archivo:$fil"


    done


    read -p "Iterar utilizando un comando"


    **for **fil in **$(ls)**


    do


        echo "Nombre archivo:$fil"


    done


    read -p "Iterar utilizando el formato tradcional"


    **for ((i=1; i&lt;10; i++))**


    do


        echo "NÃºmero;$i"


    done


## WHILE loop


![alt_text](images/image19.png "image_tooltip")



    **# ! /bin/bash**


    **# Programa para ejemplificar el uso de la sentencia de iteración while**


    **# Autor: Alexander Jair Rojas Paria**


    numero=1


    **while **[ $numero -ne 10 ]


    **do**


        echo "Imprimiendo $numero veces"


        numero=$(( numero + 1 ))


    **done**


## Loop Anidados


![alt_text](images/image20.png "image_tooltip")



    **# ! /bin/bash**


    **# Programa para ejemplificar el uso de los loops anidados**


    **# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com**


    echo "Loops Anidados"


    **for fil **in $(ls)


    **do**


        **for **nombre in {1..4}


        **do**


            echo "Nombre archivo:$**fil** _ $**nombre**"


        **done**


    **done**


## Break y continue


    **# ! /bin/bash**


    **# Programa para ejemplificar el uso de break y continue**


    **# Autor: Alexander Jair Rojas Paria**


    echo "Sentencias break y continue"


    **for **fil in $(ls)


    **do**


        **for **nombre in {1..4}


        **do**


            if [ $fil = "r1_verDatosPC.sh" ]; then


                echo "Archivo encontrado!!!!!!-->"


                **break**;


            elif [[ $fil == 4* ]]; then


                **continue**;


            else


                echo "Nombre archivo:$fil _ $nombre"


            fi


        **done**


    **done**


## Menú de Opciones


    **#!/bin/bash**


    **#Programa para validar procesos, memoria, recursos, variables.**


    **#Autor: Alexander Jair Rojas Paria - alexjair@gmail.com**


    echo ""


    echo "**** PROGRAMA VALIDACIÓN RECURSOS ****"


    echo ""


    **opcion**=0


    **while :**


    **do**


            #Limpiar Pantalla


            clear


            echo " * Menú Principal * "


            echo ""


            echo "1)Proceso Actuales "


            echo "2)Memoria Disponible "


            echo "3)Espacio en disco "


            echo "4)Informacion Red"


            echo "5)Variables de entorno configuradas "


            echo "6)Información Programa "


            echo "7)Comprimir Arcivos SH"


            echo "8)Salir "


            echo ""


            #Leer datos de usuario


            read -n1 -p "Ingrese la opción a seleccionar (1 - 8): " **opcion**


            #Validar opción ingresada


            **case **$opcion **in**


                    1)


                            echo -e "\n..Procesos Actuales.."


                            ps axu


                            sleep 3


                            ;;


                    2)


                            echo -e "\n..Memoria Disponible.."


                            free


                            sleep 3


                            ;;


                    3)


                            echo -e "\n..Espacion en disco.."


                            df -h


                            sleep 3


                            ;;


                    4)


                            echo -e "\n..Información Red.."


                            ifconfig -a


                            sleep 3


                            ;;


                    5)


                            echo -e "\n..Variables de Entorno Configuradas.."


                            #printenv


                            env -u VAR


                            sleep 3


                            ;;


                    6)


                            echo -e "\n..Información Programa.."


                            dpkg -l | more


                            sleep 3


                            ;;


                    7)


                            echo -e "\n..Comprimiedo Archivos.."


                            #tar -czvf archivosCompresos.tar.gz *


                            echo -e "\n SUCESS!!"


                            sleep 3


                            ;;


                    8)


                            echo -e "\n..Saliendo, ¡¡Gracias!!"


                            exit 0


                            ;;


            **esac**


    **done**


# **Archivos**


## Archivos y Directorios


    **# ! /bin/bash**


    **# Programa para ejemplificar la creaciÃ³n de archivos y directorios**


    echo "Archivos - Directorios"


    **if **[ $1 = "d" ]; then


        mkdir -m 755 $2


        echo "Directorio creado correctamente"


        ls -la $2


    **elif **[ $1 == "f" ]; then


        touch $2


        echo "Archivo creado correctamente"


        ls -la $2


    **else**


        echo "No existe esa opcion: $1"


     **fi**


## Escribir dentro de archivos

información:



* EOM: End Of Message
* EOF: End Of File

Para escribir en un archivo podemos utilizar >> y >

**>>** : si no existe el archivo, se creará, si existe, se agregara al final del archivo.

**>** : si no existe el archivo, se creara, si existe, será reemplazado


    cat &lt;<**EOF**>>{ficheroDondeEscribo.txt}


            linea 1..


            linea 2..


            linea 3..


    **EOF**

Script:

	**# ! /bin/bash**


    **# Programa para ejemplificar como se escribe en un archivo**


    echo "Escribir en un archivo"


    echo "Valores escritos con el comando echo" >> $1


    **#Adición multilínea**


    **cat **<&lt;EOM **>>$1**


    $2


    EOM


## 
![alt_text](images/image21.png "image_tooltip")



## Leer Archivos

Existen 3 métodos:



* A través de echo
* A través de una variable auxiliar
* A través de un loop while línea por línea

    **# ! /bin/bash**


    **# Programa para ejemplificar cómo se lee en un archivo**


    echo "Leer en un archivo"


    **#Primer método**


    echo -e "\nLeer directamente todo el archivo"


    **cat **$1


    **#Segundo método**


    echo -e "\nAlmacenar los valores en una variable"


    **valorCat**=`cat $1`


    echo "$**valorCat**"


    **#Tercer método**


    **#Se utiliza la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco se recorten**


    echo -e "\nLeer archivos línea por línea utilizando while"


    **while IFS**= read linea


    **do**


        echo "$linea"


    **done **&lt; $1



## Operaciones Archivos


    **# ! /bin/bash**


    **# Programa para ejemplificar las operaciones de un archivo**


    #crear nuevo directorio


    echo "Operaciones de un archivo"


    **mkdir -m 755** backupScripts


    #hacer copia de todos los archivos de aqui a al nuevo directorio


    echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"


    **cp *.*** backupScripts/


    **ls -la** backupScripts/


    #mover el nuevo directorio a $HOME


    echo -e "\nMover el directorio backupScripts a otra ubicaciÃ³n: $HOME"


    **mv **backupScripts **$HOME**


    #Eliminar los typefile txt del directorio actual


    echo -e "\nEliminar los archivos .txt"


    **rm ***.txt


# **Empaquetamiento**


## Empaquetamiento TAR, GZIP y PBZIP 2

El empaquetamiento es un tema interesante para manejar respaldos u otro tipo de archivos para poder reducir el tamaño de uno o varios archivos para luego distribuirlos a través de la red u otra ubicación dentro del equipo.



* **tar**: permite empaquetar múltiples archivos
* **gzip**: Este solo nos permite empaquetar un único archivo, pero nos permite optimizar el tamaño del empaquetado. Suele usarse en conjunto con tar
* **pbzip2**: Este comando permite soporta el multicore, multiprocesador. Solo podemos empaquetar un solo archivo.
    * **sudo apt-get install pbzip2** 
    * para instalar el paquete que nos permite usar la funcion **pbzip**


### 
![alt_text](images/image22.png "image_tooltip")



### TAR

# ! /bin/bash

# Programa para ejemplificar el empaquetamiento con el comando tar

echo "Empaquetar todos los scripts de la carpeta shellCourse"

**tar -cvf shellCourse.tar *.sh**


### GZIP 

# ! /bin/bash

# Programa para ejemplificar el empaquetamiento con el comando tar y gzip

echo "Empaquetar todos los scripts de la carpeta shellCourse"

**tar -cvf shellCourse.tar *.sh**

# Cuando se **empaqueta con gzip** el **empaquetamiento anterior se elimina**

**gzip shellCourse.ta**r

echo "Empaquetar un solo archivo, con un ratio 9"

**gzip -9 9_options.sh **


### PBZIP 2

# ! /bin/bash

# Programa para ejemplificar el empaquetamiento con el comando pbzip

# Autor: Marco Toscano Freire - @martosfre

echo "Empaquetar todos los scripts de la carpeta shellCourse"

**tar -cvf shellCourse.tar *.sh**

**pbzip2 -f shellCourse.tar**

echo "Empaquetar un directorio con tar y pbzip2"

**tar -cf *.sh -c > shellCourseDos.tar.bz2**


## **Zip Password & unzip**


![alt_text](images/image23.png "image_tooltip")


Instalar el zip

**sudo apt install zip**

Empaquetar con zip:


    **# ! /bin/bash**


    **# Programa para ejemplificar el empaquetamiento con clave utilizando zip**


    echo "Empaquetar todos los scripts de la carpeta shellCourse con zip y asignarle una clave de seguridad"


    **zip -e shellCourse.zip *.sh**

des empaquetar con zip:

**unzip {nombre- del-zip}**

**unzip shellCourse.zip**


![alt_text](images/image24.png "image_tooltip")



## Transferir File Network

Enviar archivos por la red

Script:


    # ! /bin/bash


    # Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optmizar la velocidad de transferencia


    echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equpoutilizando el comando rsync"


    host=""


    usuario=""


    read -p "Ingresar el host:" host


    read -p "Ingresar el usuario:" usuario


    echo -e "\nEn este momento se proceder a empaquetar la carpeta y transferirla segun los datos ingresados"


    **rsync -avz $(pwd) $usuario@$host:/Users/martosfre/Downloads/platzi**


# **Funciones**


## Paso de Argumentos Fun.

Las funciones se declaran arriba;

**# ! /bin/bash**

**# Programa que permite manejar las utilidades de Postres**

**# Autor: Marco Toscano Freire - @martosfre**

opcion=0

# FunciÃ³n para instalar postgres

**instalar_postgres **() {

    echo "Instalar postgres..."

}

# FunciÃ³n para desinstalar postgres

**desinstalar_postgres **() {

    echo "Desinstalar postres..."

}

# FunciÃ³n para sacar un respaldo

**sacar_respaldo **() {

    echo "Sacar respaldo..."

    echo "Directorio backup: $1"

}

# FunciÃ³n para restaurar un respaldo

**restaurar_respaldo **() {

    echo "Restaurar respaldo..."

    echo "Directorio respaldo: $1"

}

while :

do

    #Limpiar la pantalla

    clear

    #Desplegar el menÃº de opciones

    echo "_________________________________________"

    echo "PGUTIL - Programa de Utilidad de Postgres"

    echo "_________________________________________"

    echo "                MENÃ PRINCIPAL           "

    echo "_________________________________________"

    echo "1. Instalar Postgres"

    echo "2. Desinstalar Postgres"

    echo "3. Sacar un respaldo"

    echo "4. Restar respaldo"

    echo "5. Salir"

    #Leer los datos del usuario - capturar informaciÃ³n

    read -n1 -p "Ingrese una opciÃ³n [1-5]:" opcion

    #Validar la opciÃ³n ingresada

    case $opcion in

        1)

            **instalar_postgres**

            sleep 3

            ;;

        2) 

            **desinstalar_postgres**

            sleep 3

            ;;

        3) 

            read -p "Directorio Backup:" directorioBackup

            **sacar_respaldo **$directorioBackup

            sleep 3

            ;;

        4) 

            read -p "Directorio de Respaldos:" directorioRespaldos

            **restaurar_respaldo **$directorioRespaldos

            sleep 3

            ;;

        5)  

            echo "Salir del Programa"

            exit 0

            ;;

    esac

done   


## **Instalar  y desinstalar postgres**

# ! /bin/bash

# Programa para ejemplificar el uso del Break y Continue

# Hola. He modificado un poco el codigo original del profesos haciendo los siguientes cambios:

#

# Al momento de crear un respaldo si el directorio de Respaldo ingresado por el

# usuario no se encuentra se pregunta al Usuario si desea crear un directorio con

# el nombre inicial ingresado.

# En el modulo de Restaurar, cambie el orden de los condicionales ya que este

# orden no era el mas optimo. Si el usuario ingresa un Respaldo a Restaurar que no

# se encuentra el programa igual crea la BD en Postgres inclusive si no utiliza el

# respaldo que por supuesto NO fue encontrado lo cual no deberia suceder.

# Tambien agregue lineas de codigo para verificar si el directorio donde estan

# los .bak que es ingresado por el usuario existe. De ser asi entonces se listan

# los archivos .bak que alli se encuentran y de ese modo podemos escoger el .bak

# que deseamos restaurar.

# Por ultimo agregue al menu la opcion de listar BD en postgres para asi

# facilmente poder consultar sin tener que ir al terminal.

opcion=0

fechaActual=`date +%Y%m%d`

#Esta es la funcion instalar PostGres

instalar_postgres () {

 echo -e "\nVerificar si tenemos instalado PostGress..."

 sleep 3

 verifyInstall=$(which psql)

 if [ $? -eq 0 ]; then

     echo "PostGres ya se encuentra instalado en el equipo "

 else

      read -s -p "Introduzca password de administrador (sudo) " password

      read -s -p "Introduzca password a utilizar en PostGres " passwordPostgres

      echo "$password" | sudo -S apt update

      echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib

      sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgres}';"

      echo "$password" | sudo -S systemctl enable postgresql.service

      echo "$password" | sudo -S systemctl start postgresql.service

 fi

 read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

#Esta es la funcion desinstalar PostGres

desinstalar_postgres () {

    echo -e "\nVerificando si ya esta Desinstalado Postgres..."

    verifyInstall=$(which psql)

    if [ $? -eq 1 ]; then

        echo " PostGres NO se encuentra instalado en el Equipo "

    else

        read -s -p "Introduzca password de administrador " password

        echo -e "\n"

        echo "$password" | sudo -S systemctl stop postgresql.service

        echo "$password" | sudo -S apt-get -y --purge remove postgresql\*

        echo "$password" | sudo -S rm -r /etc/postgresql

        echo "$password" | sudo -S rm -r /etc/postgresql-common

        echo "$password" | sudo -S rm -r /var/lib/postgresql

        echo "$password" | sudo -S userdel -r postgres

        echo "$password" | sudo -S groupdel postgresql

fi

read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

#Esta es la funcion Sacar Respaldo

sacar_respaldo () {

echo "Listar las bases de datos..."

sudo -u postgres psql -c "\l"

read -p "Elegir la BD a respaldar: " bddRespaldo

echo -e "\n"

        if [ -d "$1" ]; then

                echo "Establecer permisos directorio"

                echo "$password" | sudo -S chmod 755 $1

                echo "Realizando respaldo..."

                sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"

                echo "Respaldo realizado Correctamente en la ubicacion: $1/bddRespaldo$fechaActual.bak"

        else

                echo -e  "\nEl directorio $1 No Existe"

                echo -e "\n"

                read -n1 -p "Desea crear el directorio $1 (s/n)" respbdd

                if [ $respbdd = "s" ]; then

                        sudo mkdir $1

                        echo "$password" | sudo -S chmod 755 $1

                        echo -e "\nRealizando respaldo..."

                        sleep 3

                        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"

                        echo "Respaldo realizado Correctamente en la ubicacion: $1/bddRespaldo$fechaActual.bak"

                else

                        echo -e "\nSaliendo sin realizar Respaldo..."

                        sleep 3

                fi

                fi

read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

#Esta es la funcion Restaurar Respaldo

restaurar_respaldo () {

read -p "Ingresar el directorio donde se encuentran los respaldos   " directorioBackup

if [ -d $directorioBackup ]; then

echo "Listando los archivos de Respaldos..."

sleep 3

ls -la $directorioBackup

read -p "Ingresar el archivo .bak a restaurar:  " respaldoRestaurar

#echo -e "\n"

if [ -f "$directorioBackup/$respaldoRestaurar" ]; then

        read -p "Ingresar nombre BD destino:  " bdDestino

        verifyBdd= $(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bdDestino)

        if [ $? -eq 0 ]; then

                  echo "Restaurando en la Base de Datos destino...$bdDestino"

                  sudo -u postgres pg_restore -Fc -d $bdDestino "$directorioBackup/$respaldoRestaurar"

                  echo "Listar Bases de datos..."

                  sudo -u postgres psql -c "\l"

           else

                  echo  "La BD destino no se encuentra..."

                  echo  "Creando Base de Datos destino..."

                  sleep 4

                  sudo -u postgres psql -c "CREATE DATABASE $bdDestino"

                  sudo -u postgres pg_restore -Fc -d $bdDestino "$directorioBackup/$respaldoRestaurar"

                  echo "Listar Bases de datos..."

                  sudo -u postgres psql -c "\l"

          fi

else

        echo "No se encuentra el archivo de Respaldo Ingresado"

        echo "Verifique nuevamente el nombre y vuelva a intentarlo..."

fi

else

        echo "No se encuentra el directorio de Respaldos ingresado..."

        echo "Verifique nuevamente el nombre y vuelva a intentarlo..."

fi

read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

lista_de_BD(){

echo -e  "\Las Bases de Datos Actuales: "

sudo -u postgres psql -c "\l"

read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

while :

do

    #Limpiar la pantalla

    clear

    #Desplegar el menu de opciones

    echo "----------------------------------------"

    echo "PGUTIL - Programa de Utilidades PostGres"

    echo "----------------------------------------"

    echo "           MENU PRINCIPAL               "

    echo "----------------------------------------"

    echo "1.Instalar Postgres                     "

    echo "2.Desinstalar Postgres                  "

    echo "3.Hacer un respaldo                     "

    echo "4.Restaurar respaldo                    "

    echo "5.Listar Bases de Datos Actuales        "

    echo "6.Salir                                 "

    #Leer los datos del Usuario - Capturar  Opcion

    read -n1 -p "Ingrese una opcion [1-5]: " opcion

    #Validar la opcion ingresada

    case $opcion in

        1) instalar_postgres

          #sleep 3

            ;;

        2) desinstalar_postgres

           #sleep 3

            ;;

        3)  echo -e "\n"

            read -p "Indique Directorio: " directorioBackup

            sacar_respaldo $directorioBackup

            ;;

        4)  echo -e "\n"

            #read -p "Indique Directorio de Respaldos " directorioRespaldos

            restaurar_respaldo $directorioRespaldos

            ;;

        5) lista_de_BD

            ;;

        6) echo -e "\nSaliendo del programa...."

            exit 0

            ;;

    esac

done


## **Restaurar respaldos en postgres**

# ! /bin/bash

# Programa que permite manejar las utilidades de Postres

opcion=0

fechaActual=`date +%Y%m%d`

# Funcion para instalar postgres

**instalar_postgres **() {

    echo -e "\n Verificar instalacion postgres ...."

    verifyInstall=$(which psql)

    if [ $? -eq 0 ]; then

        echo -e "\n Postgres ya se encuentra instalado en el equipo"

    else

        echo -e "\n"

        read -s -p "Ingresar contraseÃ±a de sudo:" password

        read -s -p "Ingresar contraseÃ±a a utilizar en postgres:" passwordPostgres

        echo "$password" | sudo -S apt update

        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib

        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"

        echo "$password" | sudo -S systemctl enable postgresql.service

        echo "$password" | sudo -S systemctl start postgresql.service

    fi    

    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

# Funcion para desinstalar postgres

**desinstalar_postgres **() {

    echo -e "\n"

    read -s -p "Ingresar contraseÃ±a de sudo:" password

    echo -e "\n"

    echo "$password" | sudo -S systemctl stop postgresql.service

    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*

    echo "$password" | sudo -S rm -r /etc/postgresql

    echo "$password" | sudo -S rm -r /etc/postgresql-common

    echo "$password" | sudo -S rm -r /var/lib/postgresql

    echo "$password" | sudo -S userdel -r postgres

    echo "$password" | sudo -S groupdel postgresql

    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

# Funcion para sacar un respaldo

**sacar_respaldo **() {

    echo "Listar las bases de datos"

    sudo -u postgres psql -c "\l"

    read -p "Elegir la base de datos a respaldar:" bddRespaldo

    echo -e "\n"

    if [ -d "$1" ]; then

        echo "Establecer permisos directorio"

        echo "$password" | sudo -S chmod 755 $1

        echo "Realizando respaldo..."

        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"

        echo "Respaldo realizado correctamente en la ubicacion:$1/bddRespaldo$fechaActual.bak"

    else

        echo "El directorio $1 no existe"

    fi

    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

# Funcion para restaurar un respaldo

**restaurar_respaldo **() {

    echo "Listar respaldos"

    ls -1 $1/*.bak

    read -p "Elegir el respaldo a restaurar:" respaldoRestaurar

    echo -e "\n"

    read -p "Ingrese el nombre de la base de datos destino:" bddDestino

    #Verificar si la bdd existe

    verifyBdd=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bddDestino)

    if [ $? -eq 0 ]; then

        echo "Restaurando en la bdd destino: $bddDestino"

    else

        sudo -u postgres psql -c "create database $bddDestino"

    fi

    if [ -f "$1/$respaldoRestaurar" ]; then

        echo "Restaurando respaldo..."

        sudo -u postgres pg_restore -Fc -d $bddDestino "$1/$respaldoRestaurar"

        echo "Listar la base de datos"

        sudo -u postgres psql -c "\l"

    else

        echo "El respaldo $respaldoRestaurar no existe"

    fi    

    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

while :

do

    #Limpiar la pantalla

    clear

    #Desplegar el menÃº de opciones

    echo "_________________________________________"

    echo "PGUTIL - Programa de Utilidad de Postgres"

    echo "_________________________________________"

    echo "                MENÃ PRINCIPAL           "

    echo "_________________________________________"

    echo "1. Instalar Postgres"

    echo "2. Desinstalar Postgres"

    echo "3. Sacar un respaldo"

    echo "4. Restar respaldo"

    echo "5. Salir"

    #Leer los datos del usuario - capturar informacion

    read -n1 -p "Ingrese una opcion [1-5]:" opcion

    #Validar la opcion ingresada

    case $opcion in

        1)

            **instalar_postgres**

            sleep 3

            ;;

        2)

            **desinstalar_postgres**

            sleep 3

            ;;

        3)

            echo -e "\n"

            read -p "Directorio Backup:" directorioBackup

            **sacar_respaldo **$directorioBackup

            sleep 3

            ;;

        4)

            echo -e "\n"

            read -p "Directorio de Respaldos:" directorioRespaldos

            **restaurar_respaldo **$directorioRespaldos

            sleep 3

            ;;

        5)  

            echo "Salir del Programa"

            exit 0

            ;;

    esac

done    


# **Reto #1 - Ping Platzi, ingreso variables**


## **r1_utilityHost.sh**


    **# ! /bin/bash**


    **# Programa para "Reto para UtilityHost.hs"**


    **# Autor: Alexander Jair Rojas Paria - alexjair@gmail.com**


    #Variables


    x=$1


    y=$2


    opcion=10


    result=200


    #main


    echo "Imprimir Opcion : $opcion"


    echo "Imprimir Result : $result"


    echo -e "Ver los Usar los valores ingresados.."


    echo "Result {Opcion + $1) : $((opcion+x))"


    echo "Result {Result + $2) : $((result+y))"


    echo -e "Que te parecio el Programa?.."


    read parecio


    echo -e "Que bueno te que te parecio esto..: $parecio"


## **r1_PlatziPing.sh**

	**# !/bin/bash**


    **# Reto 1 Curso de programacion en bash shell**


    **# autor:CAA**


    echo "El siguiente codigo realiza un ping a www.platzi.com 10 veces y guarda la salida en un archivo de txt"


    option=$(ping -c 10 platzi.com > /home/alexjair/shellCourse/reto.txt)


    result=$(head -n 20 reto.txt && pwd; ls -lh reto.txt)


    echo "\nEl Resultado fue: $result"


## **r1_verDatosPc.sh**


    **# !/bin/bash**


    **# Script to initialize variables and print their values**


    **# Autor: Alexander Jair Rojas Paria**


    logoinfo=$(neofetch)


    option=$(hostnamectl)


    result=$(df -h)


    partitions=$(lsblk)


    echo "El Logo del SO es: \n $logoinfo"


    echo "\n \n La informacion del SO es: \n $option"


    echo "\n \n La informacion general de las particiones del sistema son: \n $result"


    echo "\n \n Las particiones de mi computador son: \n $partitions"


## **r2_solicitudInformacion.sh**


    **#! bin/bash**


    **#Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.**


    **#Autor: Alexander Jair Rojas Paria - alexjair@gmail.com**


    **#variables**


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


    **#main**


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


## **r3_reto_ingreso_num.sh**

#! bin/bash

#Reto 3:

#Solicitar que se ingrese un valor del 1 al 5.

#Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.

#Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.

#Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

#variables

regexNum = "^[1-5]{1}$"

#main

read -p "Ingrese el numero del {1 al 5}:" num

if [[ $num =~ $regexNum ]]; then

       

        if [[ $num -eq 1 ]]; then

            echo "Elegiste el Num. 1"

        elif  [[ $num -eq 2 ]]; then

            echo "Elegiste el Num. 2"

        elif  [[ $num -eq 3 ]]; then

            echo "Elegiste el Num. 3"

        elif  [[ $num -eq 4 ]]; then

            echo "Elegiste el Num. 4"

        elif  [[ $num -eq 5 ]]; then

            echo "Elegiste el Num. 5"

        fi

else

        echo  "Error al ingresar el $num"

fi


## **r4_reto_ingreso_num.sh**

#!/bin/bash

#Programa para validar procesos, memoria, recursos, variables.

#Autor: Alexander Jair Rojas Paria - alexjair@gmail.com

echo ""

echo "**** PROGRAMA VALIDACIÓN RECURSOS ****"

echo ""

opcion=0

while :

do

        #Limpiar Pantalla

        clear

        echo " * Menú Principal * "

        echo ""

        echo "1)Proceso Actuales "

        echo "2)Memoria Disponible "

        echo "3)Espacio en disco "

        echo "4)Informacion Red"

        echo "5)Variables de entorno configuradas "

        echo "6)Información Programa "

        echo "7)Comprimir Arcivos SH"

        echo "8)Salir "

        echo ""

        #Leer datos de usuario

        read -n1 -p "Ingrese la opción a seleccionar (1 - 8): " opcion

        #Validar opción ingresada

        case $opcion in

                1)

                        echo -e "\n..Procesos Actuales.."

                        ps axu

                        sleep 3

                        ;;

                2)

                        echo -e "\n..Memoria Disponible.."

                        free

                        sleep 3

                        ;;

                3)

                        echo -e "\n..Espacion en disco.."

                        df -h

                        sleep 3

                        ;;

                4)

                        echo -e "\n..Información Red.."

                        ifconfig -a

                        sleep 3

                        ;;

                5)

                        echo -e "\n..Variables de Entorno Configuradas.."

                        #printenv

                        env -u VAR

                        sleep 3

                        ;;

                6)

                        echo -e "\n..Información Programa.."

                        dpkg -l | more

                        sleep 3

                        ;;

                7)

                        echo -e "\n..Comprimiedo Archivos.."

                        #tar -czvf archivosCompresos.tar.gz *

                        echo -e "\n SUCESS!!"

                        sleep 3

                        ;;

                8)

                        echo -e "\n..Saliendo, ¡¡Gracias!!"

                        exit 0

                        ;;

        esac

done


## **r5_info_log_fecha_YYYYmmdd.sh**


![alt_text](images/image25.png "image_tooltip")



![alt_text](images/image26.png "image_tooltip")


#!/bin/bash

# Reto 5

**fecha**=`date +%Y%m%d%H%M%S`

**usuario**=$(logname)

**archivo**=log-`date +%Y%m%d%H%M%S`.log

#Crear el archivo

**touch **$**archivo**

echo -e "\n"

#Agregar información del usuario

echo "Acceso del usuario: $**usuario** " >> $**archivo**

echo -e "\n"

#Agrego la fecha

echo "En la Fecha: $**fecha** " >> $**archivo**

#Muestro el archivo por 3 segundos

cat $archivo

sleep 3


## **r6_enviar_red_info_txt.sh**

**#!/bin/bash**

**# Programa que empaqueta, comprime, cifra y envía información a través de rsync**

option="VariableOption"

result="VariableResult"

fecha=$(date +"%F_%H")

echo "El valor de option: $option" > logOption_$fecha.txt

echo "El valor de result: $result" > logResult_$fecha.txt

# Empaquetar y comprimir los logs generados

echo -e "\nIniciando el empaquetado y compresión con tar y gz....."

**tar -czvpf logOption_$fecha.tar.gz logOption_$fecha.txt**

**tar -czvpf logResult_$fecha.tar.gz logResult_$fecha.txt**

sleep 3

# Agregando cifrado con OpenSSL

echo -e "\nAgregando cifrado a logOption_$fecha.tar.gz"

**openssl enc -aes-256-cbc -e -in logOption_$fecha.tar.gz -out logOption_$fecha.tar.gz.enc**

echo -e "\nAgregando cifrado a logResult_$fecha.tar.gz"

**openssl enc -aes-256-cbc -e -in logResult_$fecha.tar.gz -out logResult_$fecha.tar.gz.enc**

# Creando carpeta de backup para mover y transferir

echo -e "\nMoviendo los archivos cifrados a una nueva carpeta....."

**mkdir -m 755 bk_logs**

**mv logOption_$fecha.tar.gz.enc bk_logs**

**mv logResult_$fecha.tar.gz.enc bk_logs**

sleep 3

# Pasar a un servidor remoto la carpeta bk_logs utilizando rsync

# Los archivos se envian a travez de SSH habilitar los host de backup con SSH

read -p "Ingrese host: " host

read -p "Ingrese usuario: " user

echo -e "\nTransfiriendo los archivos"

**rsync -avz bk_logs $user@$host:/home/luna**


## **r7_menu.sh**

# !/bin/bash

# Reto 7

# Menu de opciones que imprime la opción seleccionada

option=0

**actual_processes**(){

    echo -e "\nProcesos Actuales:"

    ps -ef

    echo "\n"

    read -n 1 -s -r -p "Presiona ENTER para continuar..."

}

**memory_available**(){

    echo -e "\nMemoria disponible actualmente"

    free -mth

    echo -e "\n"

    read -n 1 -s -r -p "Presiona ENTER para continuar..."

}

**available_disk_space**(){

    echo -e "\n"

    df -h

    echo -e "\n"

    read -n 1 -s -r -p "Presiona ENTER para continuar..."

}

**network_info**(){

    # si no esta instalado ipconfig

    # sudo apt install net-tools

    ifconfig -v | cowsay -W 100

    read -n 1 -s -r -p "Presiona ENTER para continuar..."

}

**configured_environment_variables**(){

    echo -e "\n"

    printenv | cowsay -W 100

    echo -e "\n"

    read -n 1 -s -r -p "Presiona ENTER para continuar..."

}

**program_info**(){

    echo -e "\nPrograma que te permite conocer

    información importante acerca de tu equipo\n" | cowsay -d

    read -n 1 -s -r -p "Presiona ENTER para continuar..."

}

**backup_info**(){

    tar -cvf log.tar log.txt

    bzip2 -f log.tar

    zip -e log.zip log.tar.bz2

    usuario=""

    host=""

    echo "A continuación ingresará los datos de envío"

    read -p "Ingresar el host: " host

    read -p "Ingresar el usuario: " usuario

    echo -e "\nEn éste momento se procederá a empaquetar la carpeta y transferirla según los datos ingrasados"

    rsync -avz $(pwd) $usuario@$host:/home/juan

}

while :

do

    # Limpiar la pantalla

    clear

    # Desplegar el menú de opciones

    echo "--------------------------------------------"

    echo "PCUTIL - Programa de utilidad para tu equipo"

    echo "--------------------------------------------"

    echo "               MENU PRINCIPAL               "

    echo "--------------------------------------------"

    echo "1. Procesos Actuales"

    echo "2. Memoria Disponible"

    echo "3. Espacio en Disco"

    echo "4. Información de Red"

    echo "5. Variables de Entorno Configuradas"

    echo "6. Información del Programa"

    echo "7. Backup de información"

    echo "8. Salir"

    # Leer los datos del usuario

    read -n1 -p "Ingrese una opción [1-8]: " option

    # Validar la opción ingresada

    case $option in

        1)

            echo -e "\nMostrar Procesos Actuales....."

            **actual_processes**

            ;;

        2)

            echo -e "\nMostrar Memoria Disponible....."

            **memory_available**

            ;;

        3)

            echo -e "\nMostrar Espacio en Disco....."

            **available_disk_space**

            ;;

        4)

            echo -e "\nInformación de Red....."

            network_info

            ;;

        5)

            echo -e "\nVariables de Entorno Configuradas....."

            **configured_environment_variables**

            ;;

        6)

            echo -e "\nInformación del Programa....."

            **program_info**

            ;;

        7)

            echo -e "\nRealizando Backup de información....."

            **backup_info**

            ;;

        8)

            echo -e "\nSalir del Programa....."

            exit 0

            ;;

        *)

            echo "Elige una opción válida"

            ;;

    esac

done
