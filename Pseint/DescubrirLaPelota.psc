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
        Escribir "        1                2                3         "
        Escribir "	"
		
        intercambio <- Aleatorio(1, 2)
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
        
        // posici�n actual
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
		
		
		Esperar (1000 / ronda) Milisegundos // + velocidad en cada ronda
	FinPara
Fin Funcion

// funci�n que combina la elecci�n del jugador y el tiempo de respuesta
Funcion puntosObtenidos <- ObtenerResultado(posicionPelota, ronda, puntosTotales)
    Definir ha, minInicio, minFin, segInicio, segFin, tiempoRespuesta, puntosBase Como Entero
	Definir eleccionJugador Como Real
    
    Borrar Pantalla
    Escribir "Ronda: ", ronda, " - Puntos Totales: ", puntosTotales
    Escribir "�Ahora intenta adivinar en qu� cubo est� la pelota (1, 2, 3)!"
    Escribir "        1                2                3         "
    Escribir "     /^^^^\\          /^^^^\\          /^^^^\\      "
    Escribir "    /      \\        /      \\        /      \\     "
    Escribir "   /        \\      /        \\      /        \\    "
    Escribir "  /          \\    /          \\    /          \\   "
    Escribir " /            \\  /            \\  /            \\  "
    Escribir "/______________\\/______________\\/______________\\ "
    
    ha <- HoraActual() // Captura la hora actual al inicio
    minInicio <- trunc(ha / 100) % 100
    segInicio <- ha % 100
	
    Leer eleccionJugador
	Mientras (eleccionJugador < 1 o eleccionJugador > 3 o eleccionJugador<>trunc(eleccionJugador)) Hacer
		Escribir "Ingrese un valor v�lido, vaso 1, 2 o 3"
		Leer eleccionJugador
	Fin Mientras
    
    ha <- HoraActual()
    minFin <- trunc(ha / 100) % 100
    segFin <- ha % 100
    
    tiempoRespuesta <- (minFin - minInicio) * 60 + (segFin - segInicio)
    
    // Resultado
    puntosBase <- 100 * ronda // puntos m�ximos que aumentan con la ronda
    
    Si eleccionJugador = posicionPelota Entonces
        Escribir "Ganaste tit�n!"
        puntosObtenidos <- puntosBase - tiempoRespuesta // se restan puntos seg�n el tiempo de respuesta
    Sino
        Escribir "No acertaste, pero muy bien jugado!"
        puntosObtenidos <- 0
    FinSi
Fin Funcion

// muestra resultados al jugador
Funcion sin_retorno <- MostrarResultados(posicionPelota, puntosObtenidos, puntosTotales)
    Escribir "La pelota estaba en el vaso: ", posicionPelota
    Escribir "Puntos obtenidos en esta ronda: ", puntosObtenidos
    Escribir "Puntos Totales: ", puntosTotales
Fin Funcion

// desea continuar?
Funcion continuar <- PreguntarContinuar
    Escribir "�Quer�s jugar de nuevo? (1 = S�, 0 = No): "
    Leer continuar
	Mientras (continuar < 0 o continuar > 1) Hacer
		Escribir "Ingrese un valor v�lido, �Quer�s jugar de nuevo? (1 = S�, 0 = No):"
		Leer continuar
	Fin Mientras
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
        puntosObtenidos <- ObtenerResultado(posicionPelota, ronda, puntosTotales)
        puntosTotales <- puntosTotales + puntosObtenidos
        sin_retorno <- MostrarResultados(posicionPelota, puntosObtenidos, puntosTotales)
        
        Si puntosObtenidos > 0 Entonces
            ronda <- ronda + 1
        FinSi
        
        continuar <- PreguntarContinuar()
    Hasta Que continuar = 0
    
    Escribir "�Gracias por jugar! Puntuaci�n final: ", puntosTotales
FinProceso
