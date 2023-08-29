# Objetivo: Escribir un programa en MIPS que reciba como argumento un string y cambie las mayúsculas por
# minísculas y viceversa

.data

.text
.globl main
main:
    lw $a0, 4($a1)              # Se lee el string ingresado y se carga en $a0
    move $t0, $a0               # El string se guarda en $t0

loop:
    lb $s0, 0($a0)              # Carga un byte de $a0 en $s0
    beq $s0, 0, salir           # Si $s0 (el byte del string) vale 0, sale del programa
    xori $s0, $s0, 32           # Convierte una minúscula en mayúscula y viceversa al cambiar el 6to bit
    sb $s0, 0($a0)              # Almacena el byte modificado en el string
    addi $a0, $a0, 1            # Se procede al siguiente byte
    j loop

salir:
    li $v0, 4
    move $a0, $t0               # Imprime el string cambiando minúsculas y mayúsculas
    syscall
    li $v0, 10
    syscall