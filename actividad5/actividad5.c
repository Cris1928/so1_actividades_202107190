#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *funcion_hilo(void *arg) {
    printf("Hilo creado\n");
    return NULL;
}

int main() {
    pid_t pid;
    pthread_t thread_id;
    int numero_procesos = 0;
    int numero_hilos = 0;

    pid = fork();
    if (pid == 0) { 
        numero_procesos++;
        printf("Proceso: PID = %d\n",getpid());
        pid = fork();
        if (pid == 0) {
            numero_procesos++;
            printf("Proceso: PID = %d\n",getpid());
            fork();
            printf("Proceso: PID = %d\n",getpid());
            pthread_create(&thread_id, NULL, funcion_hilo, NULL);
            printf("Hilo:  = %lu\n",thread_id);
            numero_hilos++;
        }
    }

    fork();
    numero_procesos++;

    printf("Número de procesos únicos creados: %d\n", numero_procesos);
    printf("Número de hilos únicos creados: %d\n", numero_hilos);

    return 0;
}