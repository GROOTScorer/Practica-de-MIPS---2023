# Objetivo: Escribir un programa en MIPS que imprima los números entre el 1000 y el 1999, mostrando 5 números
# por línea.

# En C:

# #include <stdio.h>

# int main(void) {
#     // imprimir del 1000 al 1999 de a 5 por línea
#     for (int i = 1000; i < 2000; i++)
#     {
#         if(i % 5 == 0)
#         {
#             printf("\n%d", i);
#         }
#         else
#         {
#             printf("%d", i);
#         }
#     }
#     printf("\n");
#     return 0;
# }

.data
sp: .asciiz " "
nl: .asciiz "\n"

.text
.globl main
main:
    li $t0, 1000                    # $t0 = 1000

loop:
    beq $t0, 2000, salir            # Si $t0 es igual a 2000, sale del programa
    rem $t1, $t0, 5                 # El módulo de $t0 divivido 5 (o su resto) se guarda en $t1
    bne $t1, $zero, print_i         # Si el módulo de $t0/5 no es igual a 5, imprime i
    li $v0, 4
    la $a0, nl
    syscall

print_i:
    li $v0, 1
    move $a0, $t0                   # Imprime el valor actual de $t0
    syscall
    li $v0, 4
    la $a0, sp
    syscall
    addi $t0, $t0, 1                # Añade 1 a $t0 por cada iteración (o $t0++)
    j loop                          # Vuelve al loop

salir:
    li $v0, 10
    syscall