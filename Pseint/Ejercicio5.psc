//Hacer un juego que calcule los resultados de un juego de dados
Algoritmo Ejercicio5
	Definir Tope, i, Dado1, Dado2, Suma, Acum2, Acum7, Acum12 Como Entero
	// Ingreso de datos
	Mostrar "Cuantos veces quiere tirar los datos"
	Leer Tope
	//	Procesar
	Acum2=0
	Acum7=0
	Acum12=0
	Para i=0 Hasta tope Con Paso 1 Hacer
		Dado1=Azar(6-1+1)+1
		Dado2=Azar(6-1+1)+1
		Suma=Dado1+Dado2
		
		Segun Suma Hacer
			2:
				Acum2=Acum2+1
			7:
				Acum7=Acum7+1
			12:
				Acum12=Acum12+1
			//De Otro Modo:
			//	secuencia_de_acciones_dom
		Fin Segun
	Fin Para
	Mostrar "Cant de 2: ", Acum2
	Mostrar "Cant de 7: ", Acum7
	Mostrar "Cant de 12: ", Acum12
	
FinAlgoritmo
