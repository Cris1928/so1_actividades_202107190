# Cristian Daniel Gómez Escobar
# 202107190
# ACTIVIDAD 3 - SYSTEMD UNIT

## Instalación

1. Copiar el archivo `actividad3.sh` a `usr/local/bin` 
2. dar permisos de ejecución con el comando `sudo chmod +x /usr/local/bin/actividad3.sh`.
3. Copiar el archivo `actividad3.service` a `/etc/systemd/system`.
4. Entrar al directorio donde se encuentra el servicio.
5. Habilitar el servicio con el comando `sudo systemctl enable actividad3`.

## Inicio y verificacion del estado y logs del servicio

Dentro del directorio `/etc/systemd/system` relizar lo siguiente:

1. Iniciar el servicio con el comando `sudo systemctl start actividad3`.
2. revisar el estado del servicio con `sudo systemctl status actividad3`.
3. Para ver los logs del servicio utilizar el comando `sudo jorunalctl -u actividad3`.



