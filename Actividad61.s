.data
nl: .asciiz "\n"

.text
.globl main
main:
    lw $a0, 0($a1)

loop:
    lb $s0, 0($a0)
    beq $s0, $zero, salir
    addi $t0, $t0, 1
    addi $a0, $a0, 1


salir:
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 10
    syscall