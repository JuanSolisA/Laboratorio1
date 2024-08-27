Proceso OrdenamientoBurbuja
    Definir i, j, n, temp Como Entero
    Escribir "Ingrese el tamaño del arreglo:"
    Leer n
    Dimension arreglo[n]
	
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el elemento ", i, ":"
        Leer arreglo[i]
    FinPara
	
    Para i <- 0 Hasta n-1 Hacer
        Para j <- 0 Hasta n-i Hacer
            Si arreglo[j] > arreglo[j+1] Entonces
                temp = arreglo[j]
                arreglo[j] = arreglo[j+1]
                arreglo[j+1] = temp
            FinSi
        FinPara
    FinPara
	
    Escribir "Arreglo ordenado:"
    Para i <- 0 Hasta n Hacer
        Escribir arreglo[i]
    FinPara
FinProceso
