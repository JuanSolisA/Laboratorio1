Algoritmo GestionDeInventario
	
    // Definici�n de variables para tres productos como ejemplo
    Definir nombre1, nombre2, nombre3 Como Cadena
    Definir precio1, precio2, precio3 Como Real
    Definir cantidad1, cantidad2, cantidad3 Como Entero
    Definir opcion, totalProductos Como Entero
    Definir valorTotalInventario Como Real
	
    // Inicializar variables
    nombre1 <- ""
    nombre2 <- ""
    nombre3 <- ""
    precio1 <- 0.0
    precio2 <- 0.0
    precio3 <- 0.0
    cantidad1 <- 0
    cantidad2 <- 0
    cantidad3 <- 0
    totalProductos <- 0
    valorTotalInventario <- 0.0
    
    Repetir
        // Men� principal
        Escribir "Sistema de Gesti�n de Inventario"
        Escribir "1. Agregar producto"
        Escribir "2. Ver inventario"
        Escribir "3. Calcular valor total del inventario"
        Escribir "4. Salir"
        Escribir "Seleccione una opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            1:
                Si totalProductos < 3 Entonces
                    totalProductos <- totalProductos + 1
                    Escribir "Agregar producto"
                    Si totalProductos = 1 Entonces
                        Escribir "Ingrese el nombre del producto: "
                        Leer nombre1
                        Escribir "Ingrese el precio del producto: "
                        Leer precio1
                        Escribir "Ingrese la cantidad en stock: "
                        Leer cantidad1
                    Sino
                        Si totalProductos = 2 Entonces
                            Escribir "Ingrese el nombre del producto: "
                            Leer nombre2
                            Escribir "Ingrese el precio del producto: "
                            Leer precio2
                            Escribir "Ingrese la cantidad en stock: "
                            Leer cantidad2
                        Sino
                            Escribir "Ingrese el nombre del producto: "
                            Leer nombre3
                            Escribir "Ingrese el precio del producto: "
                            Leer precio3
                            Escribir "Ingrese la cantidad en stock: "
                            Leer cantidad3
                        FinSi
                    FinSi
                Sino
                    Escribir "El inventario est� lleno, no se pueden agregar m�s productos."
                FinSi
				
            2:
                Escribir "Inventario de la tienda"
                Si totalProductos >= 1 Entonces
                    Escribir "Producto 1: ", nombre1
                    Escribir "Precio: $", precio1
                    Escribir "Cantidad en stock: ", cantidad1
                    Escribir "--------------------------------"
                FinSi
                Si totalProductos >= 2 Entonces
                    Escribir "Producto 2: ", nombre2
                    Escribir "Precio: $", precio2
                    Escribir "Cantidad en stock: ", cantidad2
                    Escribir "--------------------------------"
                FinSi
                Si totalProductos = 3 Entonces
                    Escribir "Producto 3: ", nombre3
                    Escribir "Precio: $", precio3
                    Escribir "Cantidad en stock: ", cantidad3
                    Escribir "--------------------------------"
                FinSi
				
            3:
                valorTotalInventario <- 0.0
                Si totalProductos >= 1 Entonces
                    valorTotalInventario <- valorTotalInventario + (precio1 * cantidad1)
                FinSi
                Si totalProductos >= 2 Entonces
                    valorTotalInventario <- valorTotalInventario + (precio2 * cantidad2)
                FinSi
                Si totalProductos = 3 Entonces
                    valorTotalInventario <- valorTotalInventario + (precio3 * cantidad3)
                FinSi
                Escribir "El valor total del inventario es: $", valorTotalInventario
				
            4:
                Escribir "Saliendo del sistema..."
				
            De Otro Modo:
                Escribir "Opci�n no v�lida. Por favor, intente de nuevo."
        FinSegun
        
    Hasta Que opcion = 4
    
FinAlgoritmo
