// Hacer un programa que inicialmente cargue
// dos vectores de 10 posiciones con números al azar
// entre 1 y 20, y puedan mostrarlos.
// Luego calculen la sumatoria de los productos de cada elemento del vector
// Para ello existen reestricciones
// 1) para llevar a cabo esta sumatoria de productos
// los dos valores de cada vector deben ser pares
// por ultimo informar el resultado
Algoritmo ProductoDeVectoresPares
	
FinAlgoritmo

SubAlgoritmo cargar(vec)
	Definir i Como Entero
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		vec[i] <- AZAR (20-1+1)+1
	FinPara
	
FinSubAlgoritmo
	