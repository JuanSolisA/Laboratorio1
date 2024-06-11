// Ejercicio 2: Suma de Números Pares e Impares
// Escribe un programa que solicite al usuario un número positivo n, para ello
// debe validarlo y luego calcule la suma de los primeros n números pares e impares. El
// programa debe mostrar el resultado de la suma y la lista de valores en columnas de 5.
Algoritmo TP2EJ2
	Definir num, cantPar, cantImpar, acumPar, acumImpar Como Entero
	cantPar=0
	cantImpar=0
	acumPar=0
	acumImpar=0
	Repetir
		Escribir "Ingrese un valor positivo:"
		Leer num
	Hasta Que num>=0
	Para i<-1 Hasta num Con Paso 1 Hacer
		Si i mod 5 = 0 Entonces
			Escribir i, " " Sin Saltar
			Escribir " "
		SiNo
			Escribir i, " " Sin Saltar
		Fin Si
		Si (i mod 2) = 0 Entonces
			cantPar=cantPar+1
			acumPar=acumPar+i
			
		SiNo
			cantImpar=cantImpar+1
			acumImpar=acumImpar+i
		Fin Si
	Fin Para
	Escribir "La cantidad de numeros pares es ",cantPar
	Escribir "La cantidad de numeros impares es ",cantImpar
	Escribir "La suma de numeros pares es ",acumPar
	Escribir "La suma de numeros impares es ",acumImpar
	
FinAlgoritmo
