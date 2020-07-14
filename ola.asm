section .data

msg: db "mentebinaria.com.br", 0x0a

section .text
global _start

_start:

mov edx, 20 ; count
mov ecx, msg ; *buffer
mov ebx,1 ; local da saida - tela
mov eax,4 ; write
int 0x80

;exit(0)
mov ebx, 0 ; codigo de retorno da exit
mov eax, 1 ; codigo da syscall exit
int 0x80
;compilar: nasm -f elf32 ola.asm
; linkar: ld -m elf_i386 -o ola ola.o
