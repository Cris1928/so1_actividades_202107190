#! /usr/bin/env bash

while true; 
do
    # Leer mensaje del participante1
    mensaje=$(cat chat1_a_chat2)

    # Imprimir mensaje del participante1
    echo "participante1: $mensaje" 

    #leer entrada
    read -p "participante2: " respuesta

    # Enviar mensaje al participante1
    echo "$respuesta" > chat2_a_chat1 
done