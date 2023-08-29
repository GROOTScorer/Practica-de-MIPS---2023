# Objetivo: Escribir un programa en MIPS que muestre el valor absoluto de un número ingresado por entrada
# estándar.

.text
.globl main
main:
    li $v0, 5
    syscall
    move $s0, $v0       # El valor ingresado se transfiere a $s0
    blt $s0, 0, si      # Si el valor vale menos que 0, se va a la función 'si'
    li $v0, 1
    move $a0, $s0       # Si no es menor a 0, se imprime el mismo número
    syscall
    j salir

si:
    mul $s0, $s0, -1    # Se multiplica el número negativo por -1 para hacerlo un número positivo
    li $v0, 1
    move $a0, $s0       # Se imprime el número, ahora como positivo y reflejando su valor absoluto
    syscall

salir:
    li $v0, 10
    syscall