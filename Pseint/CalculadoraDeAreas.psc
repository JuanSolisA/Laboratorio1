// Calcular el área del circulo
Algoritmo CalculadoraDeAreas
	Definir radio, area Como Real
	Escribir "Ingrese el valor del rádio del círculo:"
	Leer radio
	area=CalculoDeArea(radio)
	Escribir "El área del circulo es:", area

FinAlgoritmo

Funcion a<-CalculoDeArea(r)
	a <-	pi*r*r
FinFuncion
	