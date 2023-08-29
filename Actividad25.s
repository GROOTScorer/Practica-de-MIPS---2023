# Objetivo: Escribir un programa en MIPS que acepte dos números enteros por entrada estándar, un dividendo y
# un divisor. Realizar la división entera de los dos números.
# Mostrar como salida del programa la siguiente ecuación: dividendo = divisor × cociente + resto.

.data
ingrese1: .asciiz "Ingrese el dividendo: \n"
ingrese2: .asciiz "Ingrese el divisor: \n"
igual: .asciiz " = "
mas: .asciiz " + "
por: .asciiz " x "
nl: .asciiz "\n"

.text
.globl main
main:
    li      $v0, 4
    la		$a0, ingrese1
    syscall
    li		$v0, 5          # Se lee el dividendo 
    syscall
    move 	$s0, $v0        # El prompt se mueve al registro $s0
    li      $v0, 4
    la		$a0, ingrese2
    syscall
    li		$v0, 5          # Se lee el divisor
    syscall
    move 	$s1, $v0        # El divisor se mueve al registro $s1
    div		$s2, $s0, $s1   # La división del dividendo por el divisor se guarda en $s2
    rem     $s3, $s0, $s1   # El resto de la división se guarda en $s3
    li		$v0, 1
    move    $a0, $s0
    syscall                 # Se imprime el dividendo
    li      $v0, 4
    la      $a0, igual
    syscall                 # 'dividendo = '
    li      $v0, 1
    move    $a0, $s1
    syscall                 # 'dividendo = divisor '
    li      $v0, 4
    la      $a0, por
    syscall                 # 'dividendo = divisor x '
    li      $v0, 1
    move    $a0, $s2
    syscall                 # 'dividendo = divisor x cociente'
    li      $v0, 4
    la      $a0, mas
    syscall                 # 'dividendo = divisor x cociente + '
    li      $v0, 1
    move    $a0, $s3
    syscall                 # 'dividendo = divisor x cociente + resto'
    li      $v0, 4
    la      $a0, nl
    syscall                 # Se imprima una nueva línea

    li      $v0, 10
    syscall