# TP Nº 3

## Ejercicio Nº 1

Dados dos números reales cualesquiera distinto de cero, imprimir la leyenda "Producto Positivo" si tienen el mismo signo o "producto negativo" si tienen distinto signo.

N1, N2: Reales
COMIENZO
    LEER N1, N2
    SI (N1 * N2) > 0 ENTONCES
        ESCRIBIR "Producto Positivo"
    SINO
        ESCRIBIR "Producto Negativo"
    FIN SI
FIN

## Ejercicio N° 2

Dados dos números reales cualesquiera, imprimir la leyenda "Producto Positivo" ,
"producto negativo" o "Producto nulo" según corresponda.

N1, N2: Reales
COMIENZO
    LEER N1, N2
    SI (( N1*N2 ) > 0 o ( N1*N2 ) < 0 ) ENTONCES
        SI (N1 * N2) > 0 ENTONCES
            ESCRIBIR "Producto Positivo"
        SINO
            ESCRIBIR "Producto Negativo"
        FIN SI
    SINO ESCRIBIR "Producto Nulo"
    FIN SI
FIN

## Ejercicio N° 3

Dados dos números reales, realizar un algoritmo que devuelva: La suma, la resta, el
producto y el cociente si este es posible

N1, N2, SUMA, RESTA, MULT, DIV: Reales
COMIENZO
    ESCRIBIR "Ingrese dos valores y obtendrá la suma, resta, multiplicación y división"
    LEER N1, N2
    SUMA<- N1+N2
    RESTA<- N1-N2
    MULT<- N1*N2
    DIV<- N1/N2
    ESCRIBIR "La suma de num1 + num2 es: " N1+N2
    ESCRIBIR "La resta de num1 - num2 es: " N1-N2
    ESCRIBIR "La multiplicación entre num1 y num2 es: " N1*N2

    SI N2<>0 ENTONCES
        ESCRIBIR "La división de num1 - num2 es: " N1/N2
    SINO
        ESCRIBIR "No se puede dividir por cero"
    FIN SI
FIN
