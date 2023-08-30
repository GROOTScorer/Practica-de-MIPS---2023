# Objetivo: Dar una versión en ensamblador de MIPS de int length(char *str), que devuelve la longitud de un
# string.

.data
nl: .asciiz "\n"

.text
.globl main
main:
    lw $a0, 0($a1)              # Carga el argumento string

loop:
    lb $s0, 0($a0)              # Carga el primer byte del string en $s0
    beq $s0, $zero, salir       # Si el byte es 0, sale del loop
    addi $t0, $t0, 1            # Agrega 1 a $t0 por cada iteración, funcionando como contador de caracteres
    addi $a0, $a0, 1            # Agrega 1 byte al argumento string por cada iteración


salir:
    li $v0, 1
    move $a0, $t0               # Imprime la cantidad de caracteres del string ingresado
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 10
    syscall