# Objetivo: Escribir código en ensamblador de MIPS equivalente a los siguientes enunciados de C.

# a) int aa = 12;
    li  $t0, 12

# b) b = b - 1;
    addi $t1, $t1, -1   # = -

# c) c++;
    addi $t2, $t2, 1

# d) d /= 10;
    div $t3, $t3, 10

# e) e = e % 2;
    rem $t4, $t4, 2

# f) f = g + (h - 5);    $s0 = f, $s1 = g, $s2 = h
    addi $s2, $s2, -5   # (h - 5)
    addi $s0, $s1, $s2  # f = g + (h - 5)

# g) i *= 10;
    mul $t5, $t5, 10

# h) j = i ^ 1600;   '^' significa xor
    xori $t6, $t5, 1600

# i) k = i & (j | k);    $t5 = i, $t6 = j, $t7 = k
    or  $t6, $t6, $t7
    and $t7, $t5, $t6