# Objetivo: Escribir un programa en MIPS que acepte tres argumentos enteros e imprima “iguales” si los tres
# números son iguales o “no iguales” de lo contrario. Dar el diagrama de flujo.

.data
ingrese: .asciiz "Ingrese un numero: "
igual: .asciiz "Los tres numeros son iguales"
desigual: .asciiz "Los tres numeros no son iguales"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s0, $v0                   # Mueve el primer valor ingresado a $s0
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s1, $v0                   # Mueve el segundo valor ingresado a $s1
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s2, $v0                   # Mueve el tercer valor ingresado a $s2
    beq $s0, $s1, iguales           # Si el primer y segundo valor son iguales, se va a la función 'iguales'
    bne $s0, $s1, desiguales        # Si no son iguales, se va a la función 'desiguales'

iguales:
    bne $s0, $s2, desiguales        # Si el primer y tercer valor no son iguales, se va a 'desiguales'
    bne $s1, $s2, desiguales        # Si el segundo y tercer valor no son iguales, se va a 'desiguales'
    li $v0, 4
    la $a0, igual
    syscall
    j salir

desiguales:
    li $v0, 4
    la $a0, desigual
    syscall
    j salir

salir:
    li $v0, 10
    syscall