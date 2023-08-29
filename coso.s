.data
nl: .asciiz "\n"
calculadora: .asciiz " _____________________\n|  _________________  |\n| |                 | |\n| |_________________| |\n|  ___ ___ ___   ___  |\n| | 7 | 8 | 9 | | + | |\n| |___|___|___| |___| |\n| | 4 | 5 | 6 | | - | |\n| |___|___|___| |___| |\n| | 1 | 2 | 3 | | x | |\n| |___|___|___| |___| |\n| | . | 0 | = | | / | |\n| |___|___|___| |___| |\n|_____________________|"
calculadora1: .asciiz " _____________________\n|  _________________  |\n| |               "
calculadora12: .asciiz "| |\n| |_________________| |\n|  ___ ___ ___   ___  |\n| | 7 | 8 | 9 | | + | |\n| |___|___|___| |___| |\n| | 4 | 5 | 6 | | - | |\n| |___|___|___| |___| |\n| | 1 | 2 | 3 | | x | |\n| |___|___|___| |___| |\n| | . | 0 | = | | / | |\n| |___|___|___| |___| |\n|_____________________|"
ingresenumero1: .asciiz "Ingrese el primer numero: "
ingresenumero2: .asciiz "Ingrese el segundo numero: "
ingreseoperador: .asciiz "Ingrese el operador (1 para suma, 2 para resta, 3 para multiplicacion y 4 para division): "

.text
.globl main
main:
# $t0 es operador - $t1 es numero 1 - $t2 es numero 2
    li $v0, 4
    la $a0, calculadora
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 4
    la $a0, ingreseoperador
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    li $v0, 4
    la $a0, ingresenumero1
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    li $v0, 4
    la $a0, ingresenumero2
    syscall
    li $v0, 5
    syscall
    move $t2, $v0
    beq $t0, 1, suma
    beq $t0, 2, resta
    beq $t0, 3, multiplicacion
    beq $t0, 4, division
    bgt $t0, 4, salir

suma:
    add $t1, $t1, $t2
    j salir1

resta:
    sub $t1, $t1, $t2
    j salir1

multiplicacion:
    mul $t1, $t1, $t2
    j salir1

division:
    div $t1, $t1, $t2
    j salir1

salir:
    li $v0, 10
    syscall

salir1:
    li $v0, 4
    la $a0, calculadora1
    syscall
    li $v0, 1
    move $a0, $t1
    syscall
    li $v0, 4
    la $a0, calculadora12
    syscall
    li $v0, 10
    syscall