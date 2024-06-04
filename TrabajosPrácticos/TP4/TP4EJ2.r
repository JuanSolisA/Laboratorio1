tipo : C[1]
destino : C[1]
costo : Real
incremento : Real
Comienzo
    Escribir "Ingrese el tipo de encomienda (S, X, E)"
    Leer tipo
    Escribir "Ingrese el destino de la encomienda (L, N)"
    Leer destino
    costo <- 300
    Según tipo Hacer
        "S" o "s": incremento <- 0
        "X" o "x": incremento <- 20
        "E" o "e": incremento <- 40
        En cualquier otro caso: Escribir "Tipo de encomienda no válido"
    FinSegún
    Según destino Hacer
        "L" o "l": incremento <- incremento + 5
        "N" o "n": incremento <- incremento + 20
        En cualquier otro caso: Escribir "Destino de encomienda no válido"
    FinSegún
    costo <- costo + incremento*costo/100
    Escribir "El costo de la encomienda es: $", costo
Fin
