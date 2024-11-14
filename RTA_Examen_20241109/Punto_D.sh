#!/bin/bash

echo"cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial"
echo"mkdir -p templates"
echo"cd templates"
echo"touch datos_alumno.j2"
echo"vim datos_alumno.j2"
echo"Escribir dentro del archivo:
Nombre: Abril Apellido: Gallardo
Division: 114"
echo"touch datos_equipo.j2"
echo"vim datos_equipo.j2"
echo"Escribir en el archivo:
IP: {{ ansible_default_ipv4.address }}
Distribucion: {{ ansible_facts.distribution }}
Cantidad de Cores: {{ ansible_processor_cores }}"
echo"cd .."
echo"cd tasks/"
echo"vim main.yml"
echo"Escribir en el archivo:
---
# tasks file for 2do_parcial

- debug:
    msg: "Tareas del 2do Parcial"

- name: "Crear directorio"
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    mode: '0775'
    recurse: yes
  with_items:
    - "alumno"
    - "equipo"


- name: "Agrego archivo datos_alumno.txt desde template"
  template:
    src: datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt

- name: "Agrego archivo datos_equipo.txt desde template"
  template:
    src: datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt

- name: "Configurar sudoers para el grupo 2PSupervisores"
  become: yes
  lineinfile:
    path: /etc/sudoers.d/2PSupervisores
    state: present
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'"
echo"cd UTN-FRA_SO_Examenes/202406/ansible"
echo"ansible-playbook -i inventory/hosts playbook.yml"

