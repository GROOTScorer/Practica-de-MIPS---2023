# Objetivo: Una función que devuelva 1 si dos números 𝑎 y 𝑏 son iguales o 0 de lo contrario.

iguales:
    beq $a0, $a1, iguales       # Se fija si $a0 y $a1 son iguales
    li $v0, 0                   # return 0
    j ret                       # Salta a ret

iguales:
    li $v0, 1                   # return 1

ret:
    jr $ra                      # Salta al registro 'return address'