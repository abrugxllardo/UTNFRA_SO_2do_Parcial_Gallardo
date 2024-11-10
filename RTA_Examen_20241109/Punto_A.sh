echo" ejecutar:
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
sudo swapon /dev/mapper/vg_temp-lv_swap"
