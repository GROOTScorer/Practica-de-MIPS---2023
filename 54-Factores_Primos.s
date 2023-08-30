# Objetivo: Escribir un programa en MIPS que realice la factorización de enteros en factores primos. Ejemplos:
# $ ./factores 60
# 2 2 3 5
# $ ./factores 72
# 2 2 2 3 3

# Por el teorema fundamental de la aritmética todo número natural tiene una descomposición única en factores
# primos. Por ejemplo: 72 = 2 ⋅ 2 ⋅ 2 ⋅ 3 ⋅ 3

# En C:

# #include <stdio.h>

# int main(void){
#     int n;
#     scanf("%d", & n);
#     int divisor = 2;
#     while(n > 0)
#     {
#         if(n % divisor == 0)
#         {
#             printf("%d", divisor);
#             n /= divisor;
#         }

#         else
#         {
#         divisor++;
#         }
#     }

#     printf("\n");
#     return 0;
# }

.data
ingrese: .asciiz "Ingrese un numero: "
sp: .asciiz " "

.text
.globl main
main:
    li $v0, 4
    la $a0, ingrese
    syscall
    li $v0, 5
    syscall
    move $t0, $v0               # Transfiere el valor ingresado a $t0
    li $t1, 2                   # $t1 (divisor) = 2
    j loop

loop:
    beq $t0, 1, salir           # Si el valor ingresado llega a 1, sale del programa
    rem $t2, $t0, $t1           # El resto de $t0/$t1 se guarda en $t2
    beq $t2, 0, print           # Si el resto vale 0, imprime el valor del divisor
    bne $t2, 0, mas             # Si el resto no vale 0, suma 1 al divisor

print:
    li $v0, 1
    move $a0, $t1               # Imprime el valor del divisor
    syscall
    li $v0, 4
    la $a0, sp                  # Imprime un espacio
    syscall
    div $t0, $t0, $t1           # $t0 = $t0/$t1
    j loop

mas:
    addi $t1, $t1, 1            # Le suma 1 al divisor por cada iteración
    j loop

salir:
    li $v0, 10
    syscall