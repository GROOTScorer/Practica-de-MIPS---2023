# Objetivo: Escribir un programa en MIPS que imprime la matriz identidad de 𝑛 × 𝑛. Usar dos loops anidados
# con variables de control 𝑖 y 𝑗.

.data
ingrese: .asciiz "Ingrese un numero: "
uno: .asciiz "1 "
cero: .asciiz "0 "
nl: .asciiz "\n"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s0, $v0                       # El valor se mueve a $s0
    li $s1, 0                           # $s1 = 0

outer_loop:                             # Función general para la matriz
    beq $s0, $s1, salir                 # Si $s0 (valor ingresado) es igual a $s1, sale del programa
    li $s2, 0                           # $s2 = 0

inner_loop:                             # Función para una línea de la matriz
    beq $s2, $s0, salir_inner           # Si $s2 es igual a $s0 (valor ingresado), se sale al outer_loop
    beq $s1, $s2, print_uno             # Si $s1 es igual a $s2, se imprime un 1
    li $v0, 4
    la $a0, cero                        # Se imprime un 0
    syscall
    j else

print_uno:
    li $v0, 4
    la $a0, uno                         # Imprime uno
    syscall

else:
    addi $s2, $s2, 1                    # Se le añade 1 a $s2
    j inner_loop                        # Salta de nuevo a inner_loop

salir_inner:                            # Función después de finalizar una línea de la matriz
    li $v0, 4
    la $a0, nl                          # Imprime una nueva línea
    syscall
    addi $s1, $s1, 1                    # Se le añade 1 a $s1
    j outer_loop                        # Salta a outer_loop

salir:
    li $v0, 10
    syscall