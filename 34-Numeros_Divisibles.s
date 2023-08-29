# Objetivo: Escribir un programa que reciba dos números enteros positivos e imprima “verdadero” si alguno
# de los argumentos es divisible por el otro.

.data
ingrese: .asciiz "Ingrese un numero: "
divisible: .asciiz "Son divisibles"
nodivisible: .asciiz "No son divisibles"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s0, $v0                   # El primer número se mueve a $s0
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s1, $v0                   # El segundo número se mueve a $s1
    rem $t0, $s1, $s0               # $t0 = el resto de numero2/numero1
    beq $t0, 0, esdivisible         # Si $t0 es igual a 0, entonces uno es divisible por el otro
    rem $t1, $s0, $s1               # $t1 = el resto de numero1/numero2
    beq $t1, 0, esdivisible         # Si $t1 es igual a 0, uno es divisible por el otro
    bne $t0, 0, noesdivisible       # Si $t0 no es igual a 0, no son divisibles entre sí
    bne $t1, 0, noesdivisible       # Si $t1 no es igual a 0, no son divisbles entre sí


esdivisible:
    li $v0, 4
    la $a0, divisible
    syscall
    j salir

noesdivisible:
    li $v0, 4
    la $a0, nodivisible
    syscall
    j salir

salir:
    li $v0, 10
    syscall