echo"cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"
 echo"cd /usr/local/bin/"
echo"sudo vim GallardoAltaUser-Groups.sh"
echo"Escribir lo siguiente dento del archivo sh: #!/bin/bash

USUARIO=$1
LISTA=$2

ANT_IFS=$IFS

IFS=$'\n'

CLAVE="$(sudo grep "$USUARIO" /etc/shadow | awk -F ':' '{print$2}')"

for i in cat  | awk -F ',' '{print " "" "}' | grep -v ^#
do
        USER=
        GRUPO=
        HOME_USR=

        sudo groupadd ""

        sudo useradd -d  -g  -p  gallardo
done
IFS=$ANT_IFS"
echo"una vez guardado, ejecutar:  ./GallardoAltaUser-Groups.sh gallardo /home/gallardo/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"
echo"verificamos con: sudo cat /etc/passwd"

