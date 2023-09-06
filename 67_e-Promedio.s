# Objetivo: Una función que devuelva el promedio de dos números 𝑎 y 𝑏.

promedio:
    add $t0, $a0, $a1           # Suma los valores de $a0 y $a1, y los guarda en $t0
    div $v0, $t0, 2             # Divide la suma de los dos números ($t0) por 2, y guarda el resultado en $v0
    jr $ra                      # Salta a la dirección de retorno