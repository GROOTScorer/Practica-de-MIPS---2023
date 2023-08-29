# Objetivo: Escribir un programa que acepte un argumento entero 𝑛 e imprima los números de 1 hasta 𝑛 y su
# cuadrado. Por ejemplo:

# $ spim -q -f squares.s 3
# 1 -> 1
# 2 -> 4
# 3 -> 9
# $ spim -q -f squares.s 5
# 1 -> 1
# 2 -> 4
# 3 -> 9
# 4 -> 16
# 5 -> 25

.data
flecha: .asciiz " -> "
nl: .asciiz "\n"

.text
.globl main
main:
    li $v0, 5
    syscall
    move $s0, $v0               # El valor ingresado se mueve a $s0
    li $s1, 1                   # $s1 se incializa en 1

loop:
    bgt $s1, $s0, salir         # Si el contador es más grande que el número ingresado, sale del programa
    li $v0, 1
    move $a0, $s1               # Imprime el número antes del cuadrado
    syscall
    li $v0, 4
    la $a0, flecha
    syscall
    li $v0, 1
    mul $a0, $s1, $s1           # Multiplica al número actual por sí mismo y lo imprime
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    addi $s1, $s1, 1            # Suma 1 al contador
    j loop

salir:
    li $v0, 10
    syscall