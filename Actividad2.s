# Objetivo: Escribir un programa en MIPS que imprima en consola “Hola, <arg>”, dónde <arg> es un argumento de
# línea de comandos.
.data
msg: .asciiz "Hola, "
nl:  .asciiz "\n"

.text
.globl main
main:
    li $v0, 4
    la $a0, msg
    syscall             # Se muestra el texto 'Hola, '
    lw $a0, 4($a1)      # Se lee el texto ingresado por el usuario
    syscall
    la $a0, nl          # Se imprime una nueva línea
    syscall
    li $v0, 10
    syscall             # Se sale del programa