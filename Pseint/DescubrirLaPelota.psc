// inicializa el juego con la posici�n inicial de la pelota
Funcion posicionPelota <- InicializarJuego
    posicionPelota <- Aleatorio(1, 3)
Fin Funcion

// mezcla los vasos y simula el movimiento de la pelota
Funcion posicionPelota <- MezclarVasos(posicionInicial, ronda, puntosTotales)
    Definir i, intercambio Como Entero
    posicionPelota <- posicionInicial
	
    Para i <- 1 Hasta 5 * ronda Hacer  // mezcla m�s veces a medida que la ronda aumenta
        Borrar Pantalla
        Escribir "Vasos y pelota (Ronda ", ronda, " - Puntos Totales: ", puntosTotales, "):"
        Escribir "       1               2               3         "
        
        intercambio <- Aleatorio(1, 2) // Decide si intercambiar a la izquierda o a la derecha
        Si intercambio = 1 Entonces
            Si posicionPelota = 1 Entonces
                posicionPelota <- 2
            Sino
                Si posicionPelota = 2 Entonces
                    posicionPelota <- 1
                Sino
                    posicionPelota <- 2
                FinSi
            FinSi
        Sino
            Si posicionPelota = 1 Entonces
                posicionPelota <- 3
            Sino
                posicionPelota <- 1
            FinSi
        FinSi
        
        // muestra la posici�n actual
        Si posicionPelota = 1 Entonces
            Escribir "     /^^^^\\          /^^^^\\          /^^^^\\      "
            Escribir "    /      \\        /      \\        /      \\     "
            Escribir "   /        \\      /        \\      /        \\    "
            Escribir "  /          \\    /          \\    /          \\   "
            Escribir " /     __     \\  /            \\  /            \\  "
            Escribir "/_____(__)_____\\/______________\\/______________\\ "
        Sino Si posicionPelota = 2 Entonces
				Escribir "     /^^^^\\          /^^^^\\          /^^^^\\      "
				Escribir "    /      \\        /      \\        /      \\     "
				Escribir "   /        \\      /        \\      /        \\    "
				Escribir "  /          \\    /          \\    /          \\   "
				Escribir " /            \\  /     __     \\  /            \\  "
				Escribir "/______________\\/_____(__)_____\\/______________\\ "
			Sino
				Escribir "     /^^^^\\          /^^^^\\          /^^^^\\      "
				Escribir "    /      \\        /      \\        /      \\     "
				Escribir "   /        \\      /        \\      /        \\    "
				Escribir "  /          \\    /          \\    /          \\   "
				Escribir " /            \\  /            \\  /     __     \\  "
				Escribir "/______________\\/______________\\/_____(__)_____\\ "
			FinSi
		FinSi
		
			
			Esperar (1500 / ronda) Milisegundos // Se aumenta la velocidad en cada ronda
		FinPara
	Fin Funcion
	
	// funci�n que combina la elecci�n del jugador y el tiempo de respuesta
	Funcion puntosObtenidos <- ObtenerResultado(posicionPelota, ronda)
		Definir ha, minInicio, minFin, segInicio, segFin, tiempoRespuesta, eleccionJugador, puntosBase Como Entero
		
		// Mostrar la elecci�n
		Borrar Pantalla
		Escribir "Ronda: ", ronda, " - Puntos Totales: ", puntosTotales
		Escribir "�Ahora intenta adivinar en qu� cubo est� la pelota (1, 2, 3)!"
		Escribir "       1               2               3         "
		Escribir "     /^^^^\\          /^^^^\\          /^^^^\\      "
		Escribir "    /      \\        /      \\        /      \\     "
		Escribir "   /        \\      /        \\      /        \\    "
		Escribir "  /          \\    /          \\    /          \\   "
		Escribir " /            \\  /            \\  /            \\  "
		Escribir "/______________\\/______________\\/______________\\ "
		
		ha <- HoraActual() // Captura la hora actual al inicio
		minInicio <- trunc(ha / 100) % 100
		segInicio <- ha % 100
		
		Leer eleccionJugador // Aqu� se registra la elecci�n del jugador
		
		ha <- HoraActual() // Captura la hora actual al final
		minFin <- trunc(ha / 100) % 100
		segFin <- ha % 100
		
		tiempoRespuesta <- (minFin - minInicio) * 60 + (segFin - segInicio) // Calcula la diferencia en segundos
		
		// Determinaci�n del resultado
		puntosBase <- 100 * ronda // Puntos base aumentan con la ronda
		
		Si eleccionJugador = posicionPelota Entonces
			Escribir "�Ganaste tit�n!"
			puntosObtenidos <- puntosBase - tiempoRespuesta // Se restan puntos seg�n el tiempo de respuesta
		Sino
			Escribir "No acertaste, Intenta otra vez"
			puntosObtenidos <- 0
		FinSi
		
		Si puntosObtenidos > 0 Entonces
			ronda <- ronda + 1 // Incrementa la ronda solo si gana
		FinSi
	Fin Funcion
	
	// muestra resultados al jugador
	Funcion sin_retorno <- MostrarResultados(posicionPelota, puntosObtenidos)
		Escribir "La pelota estaba en el cubo ", posicionPelota
		Escribir "Puntos obtenidos en esta ronda: ", puntosObtenidos
		Escribir "Puntos Totales: ", puntosTotales
	Fin Funcion
	
	// desea continuar?
	Funcion continuar <- PreguntarContinuar
		Escribir "�Quieres jugar de nuevo? (1 = S�, 0 = No): "
		Leer continuar
		continuar <- continuar
	Fin Funcion
	
	Proceso DescubrirLaPelota
		Definir posicionPelota, continuar, ronda, puntosTotales, puntosObtenidos Como Entero
		
		continuar <- 1
		ronda <- 1
		puntosTotales <- 0
		
		Repetir
			posicionPelota <- InicializarJuego
			posicionPelota <- MezclarVasos(posicionPelota, ronda, puntosTotales)
			puntosObtenidos <- ObtenerResultado(posicionPelota, ronda)
			puntosTotales <- puntosTotales + puntosObtenidos
			sin_retorno <- MostrarResultados(posicionPelota, puntosObtenidos)
			continuar <- PreguntarContinuar()
		Hasta Que continuar = 0
		
		Escribir "�Gracias por jugar! Puntuaci�n final: ", puntosTotales
FinProceso
