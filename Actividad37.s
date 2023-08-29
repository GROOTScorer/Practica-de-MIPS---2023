# Objetivo: Escribir un programa en MIPS que acepte dos números enteros 𝑥, 𝑦 representando coordenadas en el
# plano cartesiano. El programa debe imprimir a qué cuadrante pertenece el punto. Los cuadrantes del plano
# cartesiano se representan con los números romanos I, II, III y IV.

.data
ingresex: .asciiz "Ingrese el valor x: "
ingresey: .asciiz "Ingrese el valor y: "
arribaizquierda: .asciiz "Esta en el cuadrante I"
arribaderecha: .asciiz "Esta en el cuadrante II"
abajoizquierda: .asciiz "Esta en el cuadrante III"
abajoderecha: .asciiz "Esta en el cuadrante IV"

.text
.globl main
main:
    li $v0, 4
    la $a0, ingresex
    syscall
    li $v0, 5
    syscall
    move $s0, $v0                           # El valor de x se mueve a $s0
    li $v0, 4
    la $a0, ingresey
    syscall
    li $v0, 5
    syscall
    move $s1, $v0                           # El valor de y se mueve a $s1
    bge $s1, 0, arribaizquierda1            # Si y vale más o igual que 0, se va al cuadrante I
    blt $s1, 0, abajoizquierda1             # Si y vale menos que 0, se va al cuadrante III

arribaizquierda1:
    bge $s0, 0, arribaderecha1              # Si x vale más o igual a 0, se va al cuadrante II
    li $v0, 4
    la $a0, arribaizquierda
    syscall
    j salir

arribaderecha1:
    li $v0, 4
    la $a0, arribaderecha
    syscall
    j salir

abajoizquierda1:
    bge $s0, 0, abajoderecha1               # Si x vale más o igual a 0, se va al cuadrante IV
    li $v0, 4
    la $a0, abajoizquierda
    syscall
    j salir

abajoderecha1:
    li $v0, 4
    la $a0, abajoderecha
    syscall
    j salir

salir:
    li $v0, 10
    syscall