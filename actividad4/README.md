# CHAT BASÍCO
## scripts

El chat basico en el que pueden haber dos participantes, se poseé dos scripts para cada uno de los participantes, en el cual se permite la lectuara del mensjae del usuario, luego que este se envie al participante2, se espere la respuesta y por ultimo esta respuesta se muestre en el chat del participante1.
## Ejecucion
1. Entrar a la carpeta que contiene los scripts
2. Nos aseguramos de dar los permisos de ejecucion a los script con chmod +x.
3. Crear los named pipes para establecer los canales de comunicacion entre los dos participantes para esto utilizamos el comando mkfifo.
4. ejecutamos los scripts en dos terminales separadas y hacemos pruebas.