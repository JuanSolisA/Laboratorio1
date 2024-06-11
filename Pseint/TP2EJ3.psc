// Ej3: COntador de vocales
// Escribe un programa que pida al usuario ingresar una cadena de texto (caracteres)
// y luego pueda contar cuántas vocales (a, e, i, o, u) hay en la cadena. El programa debe
// mostrar el número total de vocales encontradas y consonantes.
Algoritmo TP2EJ3
	Definir cad Como Caracter
	Definir longCadena, contVoc, contCons Como Entero
	Leer cad
	Escribir cad
	longCadena = Longitud(cad)
	Para i<-1 Hasta longCadena Con Paso 1 Hacer
		Segun SubCadena(cad,i,i) Hacer
			"a","e","i","o","u","A","E","I","O","U":
				contVoc=contVoc+1
			De Otro Modo:
				si SubCadena(cad,i,i)<>" "
					contCons=contCons+1
				FinSi
		Fin Segun
	Fin Para
	Escribir "La suma de vocales es: ", contVoc
	Escribir "La suma de consonantes es: ", contCons
FinAlgoritmo
