// Calcular el �rea del circulo
Algoritmo CalculadoraDeAreas
	Definir radio, area Como Real
	Escribir "Ingrese el valor del r�dio del c�rculo:"
	Leer radio
	area=CalculoDeArea(radio)
	Escribir "El �rea del circulo es:", area

FinAlgoritmo

Funcion a<-CalculoDeArea(r)
	a <-	pi*r*r
FinFuncion
	