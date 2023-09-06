# Objetivo: Una función que devuelva el máximo de dos números 𝑎 y 𝑏.

max:
    bgt $a0, $a1, es_a          # Si $a0 es mayor a $a1, salta a 'es_a'
    move $v0, $a1               # Si no, guarda el valor de $a1 en $v0, o 'return $a1'
    jr $ra                      # Salta a la dirección de retorno

es_a:
    move $v0, $a0               # Mueve el valor de $a0 a $v0, o 'return $a0'
    jr $ra                      # Salta a la dirección de retorno