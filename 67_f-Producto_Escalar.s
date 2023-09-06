# Objetivo: Una función que devuelva el producto escalar entre dos vectores en el plano.

producto_escalar:
    mul $t0, $a0, $a2           # Multiplica el valor de $a0 por el de $a2 y lo guarda en $t0
    mul $t1, $a1, $a3           # Multiplica el valor de $a1 por el de $a3 y lo guarda en $t1
    add $v0, $t0, $t1           # Suma los valores de $t0 y $t1, y lo guarda en $v0
    jr $ra                      # Salta a la dirección de retorno