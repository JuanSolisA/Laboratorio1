Algoritmo LeerYMostrarVector
    Definir arrEnteros Como Entero
    Definir i Como Entero
    Dimension arrEnteros[10]
	
    cargar(arrEnteros)
    mostra(arrEnteros)
FinAlgoritmo

SubAlgoritmo cargar(vec)
    Definir i Como Entero
    Para i <- 0 Hasta 9 con paso 1 Hacer
        Escribir "Introduce el elemento ", i + 1, ":"
        Leer vec[i]
    FinPara
FinSubAlgoritmo

SubAlgoritmo mostra(vec)
    Definir i Como Entero
    Para i <- 0 Hasta 9 con paso 1 Hacer
        Escribir "Elemento ", i, ": ", vec[i]
    FinPara
FinSubAlgoritmo
