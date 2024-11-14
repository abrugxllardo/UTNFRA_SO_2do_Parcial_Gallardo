sudo apt update
sudo apt install git
pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
source ~/.bashrc
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo mkdir /work
cd /var/lib/
ll
cd /
ll
sudo fdisk -l
sudo fdisk /dev/sdd
sudo pvs
sudo pvcreate /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdd1
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc1
sudo pvs
sudo fdisk /dev/sdd
sudo pvs
sudo pvcreate /dev/sdd2
sudo pvs
sudo vgextend vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd2
sudo vgs
sudo lvcreate -L +5MB vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo vgs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas 
sudo mkswap /dev/mapper/vg_temp-lv_swap 
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
sudo lsblk -f
cd
sudo lsblk -f
cd RTA_Examen_20241109/
cat << FIN >> Punto_A.sh 
ejecutar:
sudo fdisk /dev/sdd
n
p
1

+5MB
t
8e
wq
sudo pvcreate /dev/sdd1
sudo vgcreate vg_datos /dev/sdd1
verificamos con: sudo pvs 
sudo fdisk /dev/sdc
n
p
1

+1.5GB
t
8e
wq
sudo pvcreate /dev/sdc1
sudo fdisk /dev/sdd
n
p
2

+512MB
t
2
8e
wq
sudo pvcreate /dev/sdd2
sudo pvs
sudo vgextend vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd2
sudo lvcreate -L + 5MB vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workaeras
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo swapon /dev/mapper/vg_temp-lv_swap
FIN

cat Punto_A.sh 
cd
git status
cd UTN-FRA_SO_Examenes/
git status
ll
cd
cd RTA_Examen_20241109/
git status
ll
cat Punto_A.sh 
cd
git clone https://github.com/abrugxllardo/UTNFRA_SO_2do_Parcial_Gallardo.git
cp -r UTN-FRA_SO_Examenes/202406/ UTNFRA_SO_2do_Parcial_Gallardo/
cd UTNFRA_SO_2do_Parcial_Gallardo/
ll
cd
cp RTA_Examen_20241109/Punto_A.sh UTNFRA_SO_2do_Parcial_Gallardo/
cd UTNFRA_SO_2do_Parcial_Gallardo/
ll
rm -rf Punto_A.sh 
ll
cd
cp -r RTA_Examen_20241109/ UTNFRA_SO_2do_Parcial_Gallardo/
cd UTNFRA_SO_2do_Parcial_Gallardo/
ll
cd RTA_Examen_20241109/
cat Punto_A.sh 
cd ..
git status
git add .
git commit -m "Configurar volumenes logicos"
git config --global user.name "abrugxllardo"
git commit -m "Configurar volumenes logicos"
git commit -m "primer commit"
git push origin main
cd
ll
ls -la
cd UTNFRA_SO_2do_Parcial_Gallardo/
git status
git push origin main
cd
exit
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cd /usr/local/bin/
sudo vim GallardoAltaUser-Groups.sh
./GallardoAltaUser-Groups.sh gallardo UTN_FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo chmod 744 GallardoAltaUser-Groups.sh 
./GallardoAltaUser-Groups.sh gallardo UTN_FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ll
sudo chmod 744 GallardoAltaUser-Groups.sh 
ll
sudo chmod 755 GallardoAltaUser-Groups.sh 
./GallardoAltaUser-Groups.sh gallardo /home/gallardo/UTN_FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cd
./GallardoAltaUser-Groups.sh gallardo UTN_FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin/
cd
pwd
./GallardoAltaUser-Groups.sh gallardo UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin/
./GallardoAltaUser-Groups.sh gallardo UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
cd UTN-FRA_SO_Examenes/202406/bash_script/
ll
cd
cd /usr/local/bin/
ll
./GallardoAltaUser-Groups.sh gallardo /home/gallardo/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo cat /etc/passwd
sudo cat /etc/group
sudo cat /etc/shadow
cd
cd RTA_Examen_20241109/
ll
cat << FIN >> Punto_B.sh 
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
 cd /usr/local/bin/
sudo vim GallardoAltaUser-Groups.sh
echo"Escribir lo siguiente dento del archivo sh: #!/bin/bash

USUARIO=$1 
LISTA=$2

ANT_IFS=$IFS
IFS=$'\n'

CLAVE=$(sudo grep "$USUARIO" /etc/shadow | awk -F ':' '{print$2}')

for i in cat $LISTA | awk -F ',' '{print $1" "$2" "$3}' | grep -v ^#
do
        USER=$(echo $i | awk '{print $1}')
        GRUPO=$(echo $i | awk '{print $2}')
        HOME_USR=$(echo $i | awk '{print $3}')

        sudo groupadd "$GRUPO"

        sudo useradd -d $HOME_USR -g $GRUPO -p $CLAVE $USER
done
IFS=$ANT_IFS"
echo"una vez guardado, ejecutar:  ./GallardoAltaUser-Groups.sh gallardo /home/gallardo/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"
echo"verificamos con: sudo cat /etc/passw
FIN

sudo vim Punto_B.sh 
cd
UTNFRA_SO_2do_Parcial_Gallardo/
cd UTNFRA_SO_2do_Parcial_Gallardo/
ll
RTA_Examen_20241109/
cd RTA_Examen_20241109/
cat Punto_B.sh 
cd
cd UTN-FRA_SO_Examenes/
cd
cd RTA_Examen_20241109/
sudo vim Punto_B.sh 
cd 
cd UTNFRA_SO_2do_Parcial_Gallardo/
cd RTA_Examen_20241109/
sudo vim Punto_B.sh 
cat Punto_B.sh 
cd
cd UTNFRA_SO_2do_Parcial_Gallardo/
git status
git add .
git commit -m "feat: Automatizar la creacion de grupos y usaurios"
git config --global user.name "abrugxllardo"
git commit -m "feat: Automatizar la creacion de grupos y usaurios"
git push origin main
cd RTA_Examen_20241109/
sudo vim Punto_A.sh 
cd ..
git status
git add .
git commit -m "feat: Configurar volumenes lógicos"
git push origin main
exit
cat /etc/group
sudo usermod -a -G docker gallardo
cat /etc/group
cd UTN-FRA_SO_Examenes/202406/docker/
ll
cat index.html 
vim index.html 
cat index.html 
docker login -u abrugx
touch dockerfile
vim dockerfile 
cat dockerfile 
docker build -t abrugx/web1-gallardo:latest .
docker image list
docker push abrugx/web1-gallardo:latest
touch run.sh
vim run.sh 
ll
sudo chmod 755 run.sh
ll
./run.sh 
docker ps
docker stop
docker stop fe0c2e95922d
cd
cd UTN-FRA_SO_Examenes/202406/
ll
cd
RTA_Examen_20241109/
cd RTA_Examen_20241109/
ll
vim Punto_C.sh 
cat Punto_C.sh 
cd
cd UTNFRA_SO_2do_Parcial_Gallardo/
ll
cd RTA_Examen_20241109/
vim Punto_C.sh 
git status
git add .
git commit -m "feat: Crear y pushear una imagen docker"
git push origin main
git status
cd
exit
sudo su - gallardo
exit
cd UTN-FRA_SO_Examenes/202406/ansible/
ll
cd roles/
ll
cd 2do_parcial/
ll
cd tasks/
ll
vim main.yml 
cd ..
ll
cd ..
ll
cd ..
ll
cd roles/
ll
cd 2do_parcial/
ll
mkdir -p templates
ll
cd templates/
touch datos_alumno.j2
vim datos_alumno.j2 
cat datos_alumno.j2 
touch datos_equipo.j2
vim datos_equipo.j2 
cd ..
cd tasks/
ll
vim main.yml 
cd ..
ll
cat playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml 
ll
cd roles/2do_parcial/tasks/
ll
cat main.yml 
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml 
cd roles/
ll
cd 2do_parcial/
ll
cd templates/
ll 
cat datos_equipo.j2 
cd ..
ll
cat playbook.yml 
vim playbook.yml 
cd roles/2do_parcial/tasks/
ll
cd ..
cd templates/
vim datos_equipo.j2 
cd ..
ansible-playbook -i inventory/hosts playbook.yml 
cd roles/2do_parcial/tasks/
vim main.yml 
cat main.yml 
cd ..
ll
cat playbook.yml 
cd roles/2do_parcial/tests/
ll
cat test.yml 
cd
UTNFRA_SO_2do_Parcial_Gallardo/
cd UTNFRA_SO_2do_Parcial_Gallardo/
ll
rm -rf 202406/
ll
cd
cp -r UTN-FRA_SO_Examenes/202406/ UTNFRA_SO_2do_Parcial_Gallardo/
cd UTNFRA_SO_2do_Parcial_Gallardo/
ll
cd 202406/
ll
cd ansible/
ll
cd roles/
ll
cd 2do_parcial/
cd tasks/
cat main.yml 
cd ..
git status
git add .
git commit -m "commit"
git push origin main
cd
cd RTA_Examen_20241109/
vim Punto_D.sh 
cat Punto_D.sh 
cd
cd UTNFRA_SO_2do_Parcial_Gallardo/RTA_Examen_20241109/
vim Punto_D.sh 
cd ..
git status
git add .
git commit -m "feat: Realizar las tareas pedidas"
git push origin main
cd
history -a
ll
cat .bash_history 
