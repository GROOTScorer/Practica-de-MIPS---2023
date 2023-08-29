.data
ingrese1: .asciiz "Ingrese el valor de a: "
ingrese2: .asciiz "Ingrese el valor de b: "
invalido: .asciiz "El valor de b tiene que ser mayor al de a"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    li $v0, 4
    la $a0, ingrese2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    bge $t0, $t1, salir1
    j loop

loop:
    bge $t0, $t1, salir
    rem $t2, $t0, 3
    beq $t2, 0, print
    addi $t0, $t0, 1
    j loop

print:
    li $v0, 1
    move $a0, $t0
    syscall
    j loop

salir:
    li $v0, 10
    syscall

salir1:
    li $v0, 4
    la $a0, invalido
    syscall
    li $v0, 10
    syscall