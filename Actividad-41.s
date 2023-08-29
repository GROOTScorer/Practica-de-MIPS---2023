# Objetivo: Escribir un programa en MIPS que acepte números ingresados por el usuario hasta que el usuario
# ingrese el número cero. La salida del programa es la suma de todos los números ingresados

.data
ingrese: .asciiz "Ingrese un numero: "

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $t0, $v0               # El valor ingresado se mueve a $t0
    beq $t0, 0, salir           # Si se ingresa 0, el programa termina
    j loop

loop:
    add $t1, $t1, $t0           # $t1 sirve como almacenador, recibiendo la suma de cada valor ingresado
    j main

salir:
    li $v0, 1
    move $a0, $t1               # Imprime la sumatoria total
    syscall
    li $v0, 10
    syscall