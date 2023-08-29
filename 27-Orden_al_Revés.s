# Objetivo: Escribir un programa en MIPS que acepte tres argumentos por línea de comandos e imprima un saludo
# para los tres nombres ingresados al revés de como fueron ingresados. Por ejemplo:

# $ spim -q -f hola.s Juan Pedro Maria
# Hola Maria, Pedro y Juan

.data
hola: .asciiz "Hola "
coma: .asciiz ", "
y: .asciiz " y "
nl: .asciiz "\n"
# nombre1: .space 30
# nombre2: .space 30
# nombre3: .space 30

.text
.globl main
    main:
    li $v0, 4
    la $a0, hola
    syscall
    lw $a0, 12($a1)         # Imprime el tercer nombre
    syscall
    la $a0, coma
    syscall
    lw $a0, 8($a1)          # Imprime el segundo nombre
    syscall
    la $a0, y
    syscall
    lw $a0, 4($a1)          # Imprime el primer nombre
    syscall
    la $a0, nl
    syscall
    li $v0, 10
    syscall

    # Con uso de argumentos:
    # la $a0, nombre1
	# li $v0, 8
	# syscall
    # la $a0, nombre2
	# li $v0, 8
	# syscall
    # la $a0, nombre3
	# li $v0, 8
	# syscall
    # li $v0, 4
    # la $a0, hola
    # syscall
    # li $v0, 4
	# la $a0, nombre3
	# syscall
    # li $v0, 4
    # la $a0, coma
    # syscall
    # li $v0, 4
	# la $a0, nombre2
	# syscall
    # li $v0, 4
    # la $a0, y
    # syscall
    # li $v0, 4
	# la $a0, nombre1
	# syscall
    # li $v0, 10
    # syscall