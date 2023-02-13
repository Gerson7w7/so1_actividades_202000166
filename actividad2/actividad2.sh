#!/usr/bin/env bash

# mostramos un mensaje 
echo "Ingresa tu usuario de GitHub: "
# leemos el usuario de github
read GITHUB_USER
# consultamos la página de github concantenado el github user, estas consultas las vamos a almacenar en variables
USER=$(curl "https://api.github.com/users/$GITHUB_USER" | jq '.login') 
ID=$(curl "https://api.github.com/users/$GITHUB_USER" | jq '.id') 
CREATED=$(curl "https://api.github.com/users/$GITHUB_USER" | jq '.created_at') 
# obtenemos la fecha en que se ejecutó el script y lo guardamos en una variable
FECHA=$(date +%Y-%m-%d)
# creamos el folder con la fecha actual 
mkdir "/tmp/$FECHA"
# ahora imprimimos el mansaje 
echo "Hola $USER. User ID: $ID. La cuenta fue creada el: $CREATED." | tee "/tmp/$FECHA/saludos.log"