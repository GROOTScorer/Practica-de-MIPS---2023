.data
nl: .asciiz "\n"

.text
.globl main
main:
    lw $a0, 4($a1)
    lb $s1, 0($a0)

loop:
    lb $s0, 0($a0)
    beq $s0, $zero, salir
    addi $t0, $t0, 1
    addi $a0, $a0, 1
    j loop

exit_loop:
    addi $a0, $a0, 1
    lb $s2, 0($a0)
    bgt $t0, 10, si
    lw $a0, 4($a1)
    li $v0, 4
    syscall
    j exit

si:
    addi $t0, $t0, -2
    li $v0, 1
    move $a0, $s1
    syscall
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 11