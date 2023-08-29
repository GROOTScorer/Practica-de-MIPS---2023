# Objetivo: Escribir un programa en MIPS que sume los números del 1 al 100.

.text
.globl main
main:
  addi $t0, $zero, 1          # Se le agrega 1 a $zero (0) y se guarda en $t0
  addi $t1, $zero, 0          # $t1 se guarda como 0
  j loop                      # Se salta a la función 'loop', que suma todos los números

loop:
  beq  $t0, 101, salir        # Si $t0 llega a 101, sale del programa
  add  $t1, $t1, $t0          # La suma de $t1 (acumulador) por el último número se guarda en el acumulador
  addi $t0, $t0, 1            # Se le agrega 1 a $t0 por cada iteración
  j    loop

salir:
  li $v0, 1
  move $a0, $t1               # Imprime el resultado de la suma de todos los números del 1 al 100
  syscall
  li $v0, 10
  syscall