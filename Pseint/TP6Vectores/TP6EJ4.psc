Algoritmo DiaMayorGasto
    Definir arrGastos Como Real
    Definir dia, diaMaxGasto Como Entero
    Dimension arrGastos[31]
	
    inicializarGastos(arrGastos)
    cargarGastos(arrGastos)
    mostrarDiaMayorGasto(arrGastos)
FinAlgoritmo

SubAlgoritmo inicializarGastos(vec)
    Definir i Como Entero
    Para i <- 0 Hasta 30 con paso 1 Hacer
        vec[i] = 0
    FinPara
FinSubAlgoritmo

SubAlgoritmo cargarGastos(vec)
    Definir i Como Entero
    Para i <- 0 Hasta 30 con paso 1 Hacer
        Escribir "Introduce el gasto del día ", i + 1, ":"
        Leer vec[i]
    FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarDiaMayorGasto(vec)
    Definir i, diaMaxGasto Como Entero
    Definir maxGasto Como Real
    maxGasto = vec[0]
    diaMaxGasto = 1
    Para i <- 1 Hasta 30 con paso 1 Hacer
        Si vec[i] > maxGasto Entonces
            maxGasto = vec[i]
            diaMaxGasto = i + 1
        FinSi
    FinPara
    Escribir "El día de mayor gasto fue el día ", diaMaxGasto, " con un gasto de ", maxGasto
FinSubAlgoritmo
