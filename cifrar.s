#   Tarea de Trini
#include <stdio.h>
#include <stdlib.h>

int main (int argc, char *argv[]) {
    int n = atoi(argv[1]);
    char *frase = argv[2];
    printf("%s\n", frase);
    for (int i = 0; frase[i] != 0; i++) {

    }
}
.data
nl: .asciiz "\n"

.text
.globl main
main:
    lw $a0, 0($a1)

loop:
    lb $s0, 0($a0)
    beq $s0, $zero, salir
    #   cifrar por rotación 3
    addi $s0, $s0, 3
    sb $s0, 0($a0)
    #   fin del cifrado
    addi $a0, $a0, 1
    j loop

loop:


salir:
    move $a0, $t0
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 10
    syscall