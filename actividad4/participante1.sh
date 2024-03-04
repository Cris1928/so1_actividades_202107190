#! /usr/bin/env bash

while true;
do
    #leer entrada
    read -p "participante1: " mensaje

    # Enviar mensaje a participante2
    echo "$mensaje" > chat1_a_chat2

    # Leer mensaje del participante2
    respuesta=$(cat chat2_a_chat1)

    # Imprimir mensaje del participante2
    echo "participante2: $respuesta" 
done