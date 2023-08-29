# Objetivo: Escribir un programa en MIPS que decida si un año es bisiesto o no

.data
ingrese: .asciiz "Ingresa el año: "
bisiesto: .asciiz "Es bisiesto"
nobisiesto: .asciiz "No es bisiesto"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall

    li $v0, 5
    syscall
    move $t0, $v0                       # El año ingresado es transferido a $t0

    rem $t1, $t0, 4                     # $t1 = resto de año/4
    bne $t1, 0, noesbisiesto            # Si el resto de año/4 no vale 0, no es bisiesto

    rem $t1, $t0, 100                   # $t1 = resto de año/100
    bne $t1, 0, esbisiesto              # Si el resto de año/100 no vale 0, es bisiesto

    rem $t1, $t0, 400                   # $t1 = resto de año/400
    beq $t1, 0, esbisiesto              # Si el resto de año/400 vale 0, es bisiesto

noesbisiesto:
    li $v0, 4
    la $a0, nobisiesto
    syscall
    li $v0, 10
    syscall

esbisiesto:
    li $v0, 4
    la $a0, bisiesto
    syscall
    li $v0, 10
    syscall