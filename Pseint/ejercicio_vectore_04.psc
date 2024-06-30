Algoritmo ejercicio_vectore_04
	//hacer un programa que inicialmente cargue 
	//dos vectores de 10 posiciones con numeros al azar
	//entre uno y veinte y pueda mostrarlos
	//luego calculen la sumatoria
	//de los productos de cada elemento del vector
	//para ello existen restricciones
	//que es la siguente para llevar a cabo esta sumatoria de productos
	//los dos valores de cada vector deben ser pares
	//por ultimo informar el resultado
	Definir  vec1 Como Entero
	Definir vec2 Como Entero
	definir i Como Entero
	dimension vec1[10]
	dimension vec2[10]
	cargar(vec1)
	cargar(vec2)
	//mostra(vec1) 
	//mostra(vec2)
	comparar(vec1,vec2) 
FinAlgoritmo

SubAlgoritmo cargar(vec)
	Definir i Como Entero
	Para i <- 0 Hasta 9 con paso 1 Hacer
		vec[i] <- AZAR (20-1+1)+1
	FinPara
FinSubAlgoritmo
SubAlgoritmo mostra(vec)
	Definir i Como Entero
	Para i <- 0 Hasta 9 con paso 1 Hacer
		mostrar vec[i]
	FinPara
FinSubAlgoritmo

SubAlgoritmo comparar(vector1,vector2)
	definir i Como Entero
	definir suma Como Entero
	definir multiplicacion Como Entero
	suma <- 0
	Para i <- 0 Hasta 9 con paso 1 Hacer
		si (vector1[i] mod 2) = 0 y (vector2[i] mod 2) = 0 entonces
			multiplicacion <- vector1[i]*vector2[i]
			suma <- suma+multiplicacion
			Escribir vector1[i]," x ", vector2[i]," = ",multiplicacion 			
		sino 
			Escribir vector1[i]," x ", vector2[i]
		FinSi
	FinPara
	Escribir "la sumatoria total es de ", suma 
FinSubAlgoritmo
