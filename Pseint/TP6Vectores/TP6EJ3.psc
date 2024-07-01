Algoritmo SumarElementosVector
    Definir arrSuma Como Entero
    Definir i, opcion, valor Como Entero
    Dimension arrSuma[10]
	
    inicializar(arrSuma)
    sumarElementos(arrSuma)
    mostrarResultados(arrSuma)
FinAlgoritmo

SubAlgoritmo inicializar(vec)
    Definir i Como Entero
    Para i <- 0 Hasta 9 con paso 1 Hacer
        vec[i] = 0
    FinPara
FinSubAlgoritmo

SubAlgoritmo sumarElementos(vec)
    Definir i, valor, opcion Como Entero
    Repetir
        Escribir "Introduce el índice (0-9) al que deseas sumar:"
        Leer i
        Si i >= 0 Y i < 10 Entonces
            Escribir "Introduce el valor a sumar:"
            Leer valor
            vec[i] = vec[i] + valor
        Sino
            Escribir "Índice fuera de rango."
        FinSi
        Escribir "¿Deseas continuar sumando? (1: Sí, 0: No)"
        Leer opcion
    Hasta Que opcion = 0
FinSubAlgoritmo

SubAlgoritmo mostrarResultados(vec)
    Definir i Como Entero
    Escribir "Resultados de las sumas:"
    Para i <- 0 Hasta 9 con paso 1 Hacer
        Escribir "Elemento ", i, " cantidad total: ", vec[i]
    FinPara
FinSubAlgoritmo
