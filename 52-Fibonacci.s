# Objetivo: Escribir un programa en MIPS que use un ciclo para imprimir los primeros 𝑛 números de Fibonacci,
# siendo 𝑛 un argumento entero del programa. La sucesión de Fibonacci está definida de la siguiente manera:
#
# 𝐹0 = 0, 𝐹1 = 1
#
#Es decir los dos primeros números son cero y uno. A partir del tercer número (𝐹2) y en
# adelante cada número es la suma de los dos anteriores.
#
# 𝐹𝑛 = 𝐹𝑛−2 + 𝐹𝑛−1
#
#Por ejemplo, los primeros diez números de Fibonacci 𝐹0 … 𝐹9 son:
#
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

.data
ingrese: .asciiz "Ingrese el numero de N: "
nl: .asciiz "\n"
coma: .asciiz ", "

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $s7, $v0           # El valor ingresado se mueve a $s7
    li $s0, 0               # $s0 se incializa en 0
    li $s1, 1               # $s1 se incializa en 1
    li $v0, 1
    move $a0, $s0           # Se imprime 0
    syscall
    li $v0, 4
    la $a0, coma            # Se imprime la coma
    syscall
    li $v0, 1
    move $a0, $s1           # Se imprime 1
    syscall
    li $v0, 4
    la $a0, coma            # Se imprime otra coma
    syscall
    li $t0, 2               # Se incializa $t0 a 2

loop:
    beq $t0, $s7, salir     # Si $t0 vale lo mismo que $s7, se sale del programa
    add $s2, $s0, $s1       # La suma de los últimos dos números se guarda en $s2
    li $v0, 1
    move $a0, $s2           # Se imprime el resultado de la suma
    syscall
    li $v0, 4
    la $a0, coma            # Se imprime otra coma
    syscall
    move $s0, $s1           # EL valor de $s1 se transfiere a $s0
    move $s1, $s2           # El valor de $s2 se transfiere a $s1
    addi $t0, $t0, 1        # Se le suma 1 a $t0 para aumentar el contador
    j loop

salir:
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 10
    syscall