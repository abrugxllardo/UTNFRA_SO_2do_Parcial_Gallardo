#!/bin/bash

echo"cd UTN-FRA_SO_Examenes/202406/docker/"
echo"sudo usermod -a -G docker gallardo"
echo"sudo su - gallardo"
echo"vim index.html"
echo"Escribir dento del archivo sh:
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Noviembre 2024 </h2> </br>
<h3> Abril Gallardo</h3>
<h3> División: 114</h3>
</div>"
echo"docker login -u abrugx"
echo"touch dockerfile"
echo"vim dockerfile"
echo"Escibir dentro:
FROM nginx
COPY index.html /usr/share/nginx/html/index.html"
echo"docker build -t abrugx/web1-gallardo:lastest ."
echo"docker push abrugx/web1-gallardo"
echo"touch run.sh"
echo"vim run.sh"
echo"Escribir dentro del archivo:
docker run -d -p 8080:80 abrugx/web1-gallardo"
echo"Por ultimo ejecutar usando: ./run.sh"
