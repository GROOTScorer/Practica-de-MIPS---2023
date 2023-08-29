# Objetivo: Escribir un programa en MIPS que acepte un número 𝑛 por entrada estándar e imprima 2^𝑛 por
# consola. Si el número es menor a cero imprimir “Error” y salir del programa

.data
ingrese: .asciiz "Ingrese un numero: "
nl: .asciiz "\n"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s0, $v0               # El valor ingresado se mueve a $s0
    li $s1, 2                   # $s1 es inicializado como 2
    li $s2, 1                   # $s2 es incializado como 1

loop:
    mul $s2, $s2, $s1           # Multiplica 2 por el valor de $s2, que seguirá creciendo en cada iteración
    addi $s0, $s0, -1           # Se le resta 1 a $s0 por cada iteración
    bne $s0, 0, loop            # Si $s0 no vale 0, continúa el loop

salir:
    li $v0, 1
    move $a0, $s2               # Imprime el resultado de la potenciación
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 10
    syscall