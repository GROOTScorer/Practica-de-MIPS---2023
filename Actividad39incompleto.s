.data
nl: .asciiz "\n"

.text
.globl main
main:
    addi $t0, $zero, 1
    addi $t1, $zero, 1000
    j loop

loop:
    add $t1, $t1, $t0
    addi $t0, $t0, 1
    syscall
    li $v0, 1
    move $a0, $t1
    beq $t1, 1999, salir

salir:
    li $v0, 10
    syscall