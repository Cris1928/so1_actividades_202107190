#!/bin/bash

read -p "Ingrese el nombre de usuario: " GITHUB_USER

FECHA_ACTUAL=$(date +"%d-%m-%Y")

mkdir -p /tmp/${FECHA_ACTUAL}

CONSULTA=$(curl -s https://api.github.com/users/${GITHUB_USER})

USER=$(echo $CONSULTA | jq '.login')
ID=$(echo $CONSULTA | jq '.id')
FECHA_CREACION=$(echo $CONSULTA | jq '.created_at')


MENSAGE="Hola ${USER}. User ID: ${ID}. Cuenta fue creada el: ${FECHA_CREACION}."

echo ${MENSAGE}

echo ${MENSAGE} > /tmp/${FECHA_ACTUAL}/saludos.log