# Objetivo: Escribir un programa en MIPS que acepte un argumento entero 𝑛 y use dos loops anidados para imprimir un
# patrón como el de un tablero de ajedrez usando asteriscos y espacios en la terminal. El argumento 𝑛 es la
# cantidad de filas y columnas del tablero.
# $ spim -q -f chess.s 3
# * *
# *
# * *
# $ spim -q -f chess.s 8
# * * * *
#  * * * *
# * * * *
#  * * * *
# * * * *
#  * * * *
# * * * *
#  * * * *

.data
ingrese: .asciiz "Ingrese un numero: "
nl: .asciiz "\n"
asterisco: .asciiz "* "
sp: .asciiz " "

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s0, $v0               # Guarda el valor ingresado en $s0
    li $t0, 1                   # $t0 = 1
    li $t1, 1                   # $t1 = 1

loop_inner:
    bgt $t0, $s0, loop_outer    # Si $t0 es mayor $s0, se va al outer loop (que se encarga de las líneas)
    li $v0, 4
    la $a0, asterisco           # Imprime un asterisco
    syscall
    addi $t0, $t0, 1            # Añade 1 a $t0 por cada iteración
    j loop_inner                # Vuelve al inicio de la función

loop_outer:
    beq $t1, $s0, salir         # Si $t1 es mayor a $s0, sale del programa
    li $v0, 4
    la $a0, nl                  # Imprime una nueva línea por cada iteración
    syscall
    addi $t1, $t1, 1            # Añade 1 a $t1 por cada iteración
    li $t0, 1                   # $t0 = 1
    rem $t2, $t1, 2             # $t2 = el resto de $t1/2
    beq $t2, 0, space           # Si $t2 es igual a 0, imprime un espacio
    j loop_inner                # Salta de nuevo al inner loop

 space:
     li $v0, 4
     la $a0, sp                 # Imprime un espacio
     syscall
     j loop_inner               # Salta de nuevo al inner loop

salir:
    li $v0, 10
    syscall