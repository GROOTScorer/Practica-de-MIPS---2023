# Objetivo: Una función que reciba tres longitudes 𝑎, 𝑏 y 𝑐, decidir si se puede formar un triángulo con esos números.

es_triangulo:
    add $t0, $a1, $a2       # B + C
    add $t1, $a0, $a2       # A + C
    add $t2, $a0, $a1       # A + B
    bge $a0, $t0, no        # Si $a0 es mayor o igual a $t0, no es un triángulo
    bge $a1, $t1, no        # Si $a1 es mayor o igual a $t1, no es un triángulo
    bge $a2, $t2, no        # Si $a2 es mayor o igual a $t2, no es un triángulo
    li $v0, 1               # Si es un triángulo, return 1
    jr $ra                  # Salta a la dirección de retorno

no:
    li $v0, 0               # Si no es un triángulo, return 0
    jr $ra                  # Salta a la dirección de retorno