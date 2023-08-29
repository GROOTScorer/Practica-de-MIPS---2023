// Objetivo: Dar las instrucciones en C equivalentes al siguiente código de ensamblador de MIPS. Asumir que las
// variables f, g, h, i y j están asignadas a los registros $s0 a $s4. Las direcciones base de los arrays A y
// B están en los registros $s6 y $s7.

// sll $t0, $s0, 2 # $t0 = f * 4
// add $t0, $s6, $t0 # $t0 = &A[f]
// sll $t1, $s1, 2 # $t1 = g * 4
// add $t1, $s7, $t1 # $t1 = &B[g]
// lw $s0, 0($t0) # f = A[f]
// addi $t2, $t0, 4
// lw $t0, 0($t2)
// add $t0, $t0, $s0
// sw $t0, 0($t1)


#include <stdio.h>

int main(void) {
    int A[] = { 1,2,3,4 };
    int B[] = { 10,11,12,13 };
    int f, g, h, i, j;
    f = 2;      // No está en el ejercicio
    g = 1;      // No está en el ejercicio
    f = A[f];   // lw $s0, 0($t0)
    
    // $t0 = $A[f]
    // $t2 = &A[f] + 4
    // $t0 = 4
    // $t0 = 3 + 4 // A[f] + A[f+1]

    // Solución del ejercicio
    B[g] = A[f] + A[f+1];
}