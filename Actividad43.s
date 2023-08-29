# Objetivo: Escribir un programa en MIPS que acepte un número entero 𝑛 como argumento y calcule 𝑛!, el
# factorial de 𝑛. Si 𝑛 < 0 imprimir “Error”.

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
    move $s0, $v0               # Mueve el valor ingresado a $s0
    ble $s0, 0, error           # Si el valor ingresado es menor o igual a 0, sale error y sale del programa
    li $t0, 1                   # Inicializa $t0 en 1

loop:
    mul $t0, $s0, $t0           # $s0 se va multiplicando a sí mismo de manera decremental
    addi $s0, $s0, -1           # Se le resta 1 a $s0 por cada iteración del loop
    bne $s0, 0, loop            # Si $s0 no vale 0, sigue el programa

salir:
    li $v0, 1
    move $a0, $t0               # Se imprime el resultado del factorial
    syscall
    li $v0, 10
    syscall