# Objetivo: Escribir un programa en MIPS que acepte como entrada un número entero de días. El programa debe
# imprimir la cantidad de años, semanas y días correspondiente. Ignorar los años bisiestos. Por ejemplo para
# 375 días como entrada, el programa imprime: “1 año, 1 semana, 3 días”.

# El código en C es el siguiente:

# #include <stdio.h>

# int main(void)
# {
#     int dias;
#     scanf("%d", & dias);
#     int semanas, anios;
#     anios = dias / 365;
#     dias = dias % 365;
#     semanas = dias / 7;
#     dias = dias % 7;
#     printf("anios: %d, semanas; %d, dias: %d\n", anios, semanas, dias);
#     return 0;
# }

.data
ingresar: .asciiz "Ingrese la cantidad de dias: "
anios: .asciiz "anios: "
semanas: .asciiz "semanas: "
dias: .asciiz "dias: "
nl: .asciiz "\n"

.text
.globl main
    main:
    addi $v0, $0, 4
    la   $a0, ingresar
    syscall
    li $v0, 5
    syscall
    move $s2, $v0
    div $s0, $s2, 365   # anios = dias / 365
    rem $s2, $2, 365    # dias = dias % 365
    div $s1, $s2, 7     # semanas = dias / 7
    rem $s2, $s2, 7     # dias = dias % 7

    la $a0, anios
    li $v0, 4
	syscall             # Imprime la cantidad de años
    li $v0, 1
    move $a0, $s0
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    la $a0, semanas     # Imprime la cantidad de semanas
    li $v0, 4
    syscall
    li $v0, 1
    move $a0, $s1
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    la $a0, dias        # Imprime la cantidad de días restantes
    li $v0, 4
    syscall
    li $v0, 1
    move $a0, $s2
    syscall
    addi	$v0, $0, 10
    syscall