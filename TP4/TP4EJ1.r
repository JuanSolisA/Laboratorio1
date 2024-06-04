codCat : Cadena[1]
Comienzo
    Escribir "Ingrese el código de la categoría"
    Leer codCat
    Según codCat Hacer
        "I" o "i": Escribir "Infantiles $800"
        "C" o "c": Escribir "Cadetes $1000"
        "J" o "j": Escribir "Juvenil $1200"
        "A" o "a": Escribir "Adulto $900"
        En cualquier otro caso: Escribir "Categoría no válida"
    FinSegún
Fin