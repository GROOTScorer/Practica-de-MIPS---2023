# Objetivo: Escribir un programa en MIPS que acepte dos números como entrada: día y mes.
# Imprimir “verdadero” si la fecha está entre el 20 de marzo y el 20 de junio, o “falso” de lo contrario.

.data
dia: .asciiz "Ingrese el dia: "
mes: .asciiz "Ingrese el mes: "
verdadero: .asciiz "Verdadero"
falso: .asciiz "Falso"

.text
.globl main
main:
    li $v0, 4
    la $a0, dia
    syscall
    li $v0, 5
    syscall
    move $s0, $v0                   # El día es transferido a $s0
    li $v0, 4
    la $a0, mes
    syscall
    li $v0, 5
    syscall
    move $s1, $v0                   # El mes es transferido a $s1
    bgt $s1, 6, invalido            # Si el mes es mayor a 6, es falso
    blt $s1, 3, invalido            # Si el mes es menor a 3, es falso
    beq $s0, 20, valido             # Si el día vale 20, es verdadero (porque está entre los meses 3 y 6)
    bgt $s0, 20, mayor20            # Si el día es mayor a 20, se va a la función 'mayor20'
    blt $s0, 20, menor20            # Si el día es menor a 20, se va a la función 'menor20'
    j valido

valido:
    li $v0, 4
    la $a0, verdadero
    syscall
    j salir

invalido:
    li $v0, 4
    la $a0, falso
    syscall
    j salir

menor20:
    beq $s1, 3, invalido            # Si el día es menor a 20 y el mes es marzo, es falso
    j valido                        # Si no, es verdadero

mayor20:
    beq $s1, 6, invalido            # Si el día es mayor a 20 y el mes es junio, es falso
    j valido                        # Si no, es verdadero

salir:
    li $v0, 10
    syscall