.data
ingrese: .asciiz "Ingrese un numero: "
sumada: .asciiz "La suma da: "

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s0, $v0
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s1, $v0
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s2, $v0
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s3, $v0
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s4, $v0
    rem $t0, $s0, 2
    rem $t1, $s1, 2
    rem $t2, $s2, 2
    rem $t3, $s3, 2
    rem $t4, $s4, 2
    bne $t0, 0
    bne $t1, 0
    bne $t2, 0
    bne $t3, 0
    bne $t4, 0

suma:
    
    li $v0, 4
    la $a0, sumada
    syscall
    j salir

salir:
    li $v0, 10
    syscall