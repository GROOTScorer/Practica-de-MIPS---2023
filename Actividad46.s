# Objetivo: Escribir un programa en MIPS que acepte como argumento un número entero e imprima el número
# con los digitos al revés. Por ejemplo para la entrada 12345 debe imprimir 54321.

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

loop:
    rem $s2, $s0, 10            # El resto de $s0/10 se guarda en $s2
    li $v0, 1
    move $a0, $s2               # Se imprime el resto
    syscall
    div $s0, $s0, 10            # $s0 se divide por 10
    bne $s0, 0, loop            # Si $s0 no vale 0, se vuelve al loop

salir:
    li $v0, 10
    syscall