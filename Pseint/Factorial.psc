Algoritmo Factorial
	Definir num, fact Como Entero
	Repetir
		Escribir "Ingrese un valor positivo para calcular su factorial:"
		Leer num
	Hasta Que num>0
	fact=CalculoDeFactorial(num)
	Escribir "El factorial del numero ",num," es:", fact
	
FinAlgoritmo

Funcion a<-CalculoDeFactorial(n)
	a=1
	Para i=1 Hasta n Con Paso 1 Hacer
		a=a*i
	Fin Para
FinFuncion
