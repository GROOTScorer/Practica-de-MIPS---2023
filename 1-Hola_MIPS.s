# Objetivo: Escribir un programa en MIPS que imprima en consola “Hola MIPS”.
.data
Mensaje1: .asciiz "Hola MIPS"   # El '.asciiz' indica que lo que sigue son caracteres ASCII, y 'Mensaje1'
                                # ahora contiene el texto 'Hola MIPS'

.text                           # Abajo se indican las instrucciones
.globl main                     # Solo necesario si se usa para un simulador como QtSpim
main:                           # Se llama a la función 'main'
    li $v0, 4                   # Instrucción para imprimir un string
    la $a0, Mensaje1            # Se carga 'Mensaje1' para que se imprima su contenido
    syscall                     # Llamada al sistema para que haga las instrucciones previas
    li $v0, 10                  # Instrucción para terminar el programa
    syscall                     # Corre la instrucción y termina el programa