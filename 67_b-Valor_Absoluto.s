# Objetivo: Una función que devuelva el valor absoluto de un número 𝑎.

valor_absoluto:
    move $v0, $a0               # Mueve el valor de $a0 a $v0
    blt $v0, $zero, menos       # Si $v0 vale menos que 0, salta a 'menos'
    jr $ra                      # Salta al registro return address

menos:
    mul $v0, $v0, -1            # Si $v0 vale menos que 0, se multiplica su valor por -1 para que sea positivo
    jr $ra                      # Salta al registro return address