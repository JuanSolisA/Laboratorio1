// Hacer un programa que dado un lote de números que se pide por teclado al usuario
// pueda determinar cuantos de ellos son primos y cuales no. Determinar también 
// cuantos primos encontró. Que porcentaje de primos hubo en ese lote?

Algoritmo Ejercicio6
	Definir NumIngresado, i, ContResiduoCero Como Entero
	Definir PromPrimos, j, ContPrimos, ContNoPrimos Como Real
	ContPrimos=0
	ContNoPrimos=0
	j=0
	
	Repetir
		Mostrar "Ingrese un número a evaluar o 0(cero) para finalizar la carga"
		Leer NumIngresado
		j=j+1
		i=1
		ContResiduoCero=0
		Mientras i<=NumIngresado Hacer
			
			Si NumIngresado MOD i = 0 Entonces
				ContResiduoCero=ContResiduoCero+1
			Fin Si
			i=i+1
			
		Fin Mientras
		
		Si ContResiduoCero=2 Entonces
			ContPrimos=ContPrimos+1
		SiNo
			ContNoPrimos=ContNoPrimos+1
		Fin Si
	Hasta Que NumIngresado = 0
	
	Mostrar "Hubo ", ContPrimos, " numeros primos."
	Mostrar "Hubo ", ContNoPrimos , " numeros no primos."
	Mostrar "Hubo un ", ContPrimos/j , " numeros primos."
FinAlgoritmo
