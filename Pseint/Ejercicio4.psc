// Ingreso de nros. en un ciclo repetitivo
Algoritmo Ejercicio4
	Definir TOPE, i, NroAl Como Entero
	// Ingreso de datos
	Mostrar "Cuantos números quiere ver"
	Leer TOPE
	//	Procesar
	i=0
	Mientras TOPE > i Hacer
		//	Mostrar " ", i Sin Saltar
		NroAl=Azar(20-1+1)+1
		Mostrar Mostrar " ", NroAl Sin Saltar
		i=i+1
		Si i MOD 5  = 0 Entonces
			Escribir " "
		FinSi
	Fin Mientras
	Mostrar " "
	
FinAlgoritmo
