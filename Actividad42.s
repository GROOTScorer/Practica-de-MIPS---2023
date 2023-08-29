# Objetivo: Escribir un programa en MIPS que reciba un número 𝑛 por entrada estándar e imprima 𝑛 veces la
# frase “I am Groot”. Si 𝑛 ≤ 0 imprimir “Error”

.data
ingrese: .asciiz "Ingrese un numero: "
groot: .asciiz "I am Groot"
nl: .asciiz "\n"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $t0, $v0               # El valor ingresado se mueve a $t0
    ble $t0, 0, salir           # Si el valor ingresado es menor o igual a 0, sale del programa
    j loop

loop:
    beq $t0, 0, salir           # Si $t0 vale 0, sale del programa
    li $v0, 4
    la $a0, groot
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    addi $t0, $t0, -1           # Se le resta 1 al valor ingresado por cada iteración del loop
    j loop

salir:
    li $v0, 10
    syscall