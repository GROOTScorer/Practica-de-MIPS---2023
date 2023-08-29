# 5. ¿Qué instrucción de MIPS sirve para sumar un registro y una constante?
# □ sum
# □ add
# ☑ addi
# □ addc

# 6. ¿Cuál de los siguientes no es un tipo de instrucción en MIPS?
# □ R
# ☑ S
# □ J
# □ I

# 7. ¿Cuál de las siguientes no es una instrucción real en MIPS?
# □ li
# □ la
# □ move
# ☑ Todas son pseudoinstrucciones.

# 8. En ensamblador de MIPS las palabras que comienzan con un punto son
# □ Etiquetas
# ☑ Directivas
# □ Registros
# □ Instrucciones

# 9. ¿Cuál de las siguientes instrucciones sirve para multiplicar un número por cuatro?
# ☑ sll $s0, $s0, 2
# □ sll $s0, $s0, 4
# □ srl $s0, $s0, 2
# □ srl $s0, $s0, 4

# 10. ¿Cuál de las siguientes instrucciones en C es equivalente a and $t0, $t0, $zero?
# □ a && 0
# □ a = a && 0
# ☑ a &= 0
# □ a & b

# 11. ¿Para qué sirven las etiquetas en ensamblador?
# □ Para indicar dónde deben ubicarse en memoria los contenidos del archivo de código fuente.
# ☑ Para no referirse a direcciones de memoria por números sino por símbolos.
# □ Para separar las instrucciones de los datos.
# □ Para declarar variables.

# 12. ¿Cuál de las siguientes directivas indica que lo que sigue es un número entero de 32 bits?
# ☑ .word
# □ .asciiz
# □ int:
# □ .data

# 13. ¿Qué registro en MIPS apunta al tope de la pila (stack)?
# □ $gp
# □ $fp
# ☑ $sp
# □ $ra

# 14. ¿Qué registro usarías para devolver el valor de una función en MIPS?
# □ $s0
# ☑ $v0
# □ $a0
# □ Cualquier registro sirve.

# 15. ¿Cuál es la función de los registros $s0 a $s9?
# □ Son registros para pasar argumentos a una función.
# ☑ Son registros de propósito general.
# □ Son registros utilizados por el sistema operativo.
# □ Son registros utilizados para realizar cuentas.

# 16. ¿En qué dirección de memoria se ubica el código del programa según la segmentación de memoria usada en
# MIPS?
# □ 0x1000 0000
# ☑ 0x0040 0000
# □ 0x1000 8000
# □ 0x0000 0000

# 17. ¿Qué código numérico se usa para indicar al sistema operativo que queremos imprimir un número entero?
# ☑ 1
# □ 2
# □ 4
# □ 10

# 18. ¿Dónde debemos poner la dirección del string que queremos imprimir al usar una system call?
# □ $s0
# □ $v0
# ☑ $a0
# □ $k0

# 19. En una instrucción load word que función cumple el valor del campo imm?
# □ Es el número que queremos cargar en el registro.
# ☑ Es un offset de la dirección base.
# □ Es un código que indica el registro dónde queremos cargar el valor.
# □ Es la dirección de memoria desde la cual queremos cargar el valor

# 20. Los campos de una instrucción de tipo R son
# ☑ op rs rt rd shamt funct
# □ op rd rs rt shamt funct
# □ op rd rs rt imm funct
# □ op rs rt imm

# 21. El rango de números válidos para el campo immediate es de
# □ [−2^15, 2^15]
# □ [−2^31, 2^31 − 1]
# □ [−2^16, 2^16 − 1]
# ☑ [−32768, 32767]

# 22. ¿Qué instrucción usa el ensamblador de MIPS en lugar de li $v0, 4?
# ☑ ori $2, $0, 4
# □ ori $zero, $v0, 4
# □ add $0, $2, 4
# □ lw $v0, 4

# 23. ¿Cuál de los siguientes registros no deben ser preservados en el prólogo de una función?
# □ $sp
# □ $ra
# □ $s0
# ☑ $t0

# 24. ¿En qué caso una función no tiene la necesidad de preservar el valor del return address?
# □ En ningún caso.
# □ Cuándo lo hace el caller.
# ☑ Cuándo es una leaf procedure.
# □ Cuándo es una función no recursiva.