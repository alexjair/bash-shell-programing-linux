# 🐱‍🐉 Bash-Shell-Programing
🖥 Programación en Bash Shell en el servidor de Ubuntu Linux, se crearan script .hs para la ejecución, para administración e instalación de Postgress e automatitación de procesos.


-----------

<!-- Output copied to clipboard! -->

<!-- You have some errors, warnings, or alerts. If you are using reckless mode, turn it off to see inline alerts.
* ERRORs: 0
* WARNINGs: 0
* ALERTS: 10 -->


# **Programación en Bash Shell**


# **Bienvenida e Introducción**


## **Componentes de Linux, Tipos de Shell y Comandos de información**

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


## **Declaración de Variables (Entorno)**

Ir al directorio

**vim /etc/profile**

Agregar al archivo al final


    **#variables de entorno**


    **COURSE_NAME=Programacion Bash**


    **export COURSE_NAME**


![alt_text](images/image6.png "image_tooltip")


Las variables de entorno se reflejan a reboot de sistema.


## **Declaración de Variables y Alcance en Bash Shell**

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

Editamos el bash 2

**vim 2_variables_2.sh**


    # !/bin/bash 


    # Programa para revisar la declaración de variables 


    # Autor: Marco Toscano Freire - @martosfre 


    **echo "Opción nombre pasada del script anterior: $nombre"**

Copiar el bach

Copiar el bach


## Tipos de Operadores


## Script con Argumentos


## Sustitución de Comandos en variables


## Debug en Script


# **Script Interactivos**


## Capturar información usuario


## Expresiones Regulares


## Validar información


## Paso de parámetros y opciones


## Descargar información de Internet


# **Condicionales**


## Sentencias If/Else


## If Anidados


## Expresiones Condicionales


## Sentencias Case


# **Iteración**


## Arreglos


## Sentencia for loop


## Sentencia while loop


## Loop Anidados


## Break y continue


## Menú de Opciones


# **Archivos**


## Archivos y Directorios


## Escribir dentro de archivos


## Leer Archivos


## Operaciones Archivos


# **Empaquetamiento**


## Empaquetamiento TAR, GZIP y PBZIP 2


## Respaldo Empaquetado con clave


## Transferir información red


# **Funciones**


## Crear funciones y Paso de Argumentos


## Funciones de instalar  y desinstalar postgres


## Funciones sacar y restaurar respaldos en postgres
