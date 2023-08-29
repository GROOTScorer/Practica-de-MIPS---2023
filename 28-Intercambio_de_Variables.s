# Objetivo: Escribir un programa en MIPS que intercambie el valor de dos variables enteras 𝑎 y 𝑏. Los valores
# iniciales de 𝑎 y 𝑏 se obtienen por entrada estándar. Imprimir los valores de 𝑎 y 𝑏 antes y después del cambio

.data
ingrese: .asciiz "Ingrese el valor a: "
ingrese1: .asciiz "Ingrese el valor b: "

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5           # Lee el valor de a
    syscall
    move $s0, $v0       # El valor de a se transfiere al registro $s0
    li $v0, 4
    la $a0, ingrese1
    syscall
    li $v0, 5           # Se lee el valor de b
    syscall
    move $s1, $v0       # b se transfiere al registro $s1
    move $s2, $s1       # b se transfiere al registro $s2
    move $s1, $s0       # a se transfiere al registro $s1
    move $s0, $s2       # b se transfiere al registro $s0
    li $v0, 1
    move $a0, $s0       # Se imprime el valor de b
    syscall
    li $v0, 1
    move $a0, $s1       # Se imprime el valor de a
    syscall
    li $v0, 10
    syscall