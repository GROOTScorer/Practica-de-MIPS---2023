# Objetivo: Escribir un programa en MIPS que decida si un número es par o no

.data
ingrese: .asciiz "Ingrese su numero: "
par: .asciiz "El numero es par."
impar: .asciiz "El numero es impar."

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s0, $v0               # Transfiere el valor ingresado a $s0
    li $t0, 0                   # $t0 = 0
    rem $t0, $s0, 2             # $t0 = el resto de $s0/2
    beq $t0, 0, espar           # Si $t0 (el resto de $s0/2) vale 0, el número es par
    bne $t0, 0, esimpar         # Si $t0 no vale 0, el número es impar

espar:
    li $v0, 4
    la $a0, par
    syscall
    j salir                     # Salta a la función 'salir', que sale del programa

esimpar:
    li $v0, 4
    la $a0, impar
    syscall

salir:
    li $v0, 10
    syscall