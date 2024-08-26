// inicializa el juego con la posición inicial de la pelota
Funcion posicionPelota <- InicializarJuego
    posicionPelota <- Aleatorio(1, 3)
Fin Funcion

// mezcla los vasos y simular el movimiento de la pelota
Funcion posicionPelota <- MezclarVasos(posicionInicial)
    Definir i, intercambio Como Entero
    posicionPelota <- posicionInicial
	
    Para i <- 1 Hasta 5 Hacer  // mezcla 5 veces la pelota
        Borrar Pantalla
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
        
        // muestra los vasos y la pelota en la posición actual
        Escribir "Vasos y pelota:"
        Escribir " 1     2     3 "
        Si posicionPelota = 1 Entonces
			Escribir "     /^^^^\          /^^^^\          /^^^^\      "
			Escribir "    /      \        /      \        /      \     "
			Escribir "   /        \      /        \      /        \    "
			Escribir "  /          \    /          \    /          \   "
			Escribir " /     __     \  /            \  /            \  "
			Escribir "/_____(__)_____\/______________\/______________\ "
			Sino Si posicionPelota = 2 Entonces
					Escribir "     /^^^^\          /^^^^\          /^^^^\      "
					Escribir "    /      \        /      \        /      \     "
					Escribir "   /        \      /        \      /        \    "
					Escribir "  /          \    /          \    /          \   "
					Escribir " /            \  /     __     \  /            \  "
					Escribir "/______________\/_____(__)_____\/______________\ "
				Sino
					Escribir "     /^^^^\          /^^^^\          /^^^^\      "
					Escribir "    /      \        /      \        /      \     "
					Escribir "   /        \      /        \      /        \    "
					Escribir "  /          \    /          \    /          \   "
					Escribir " /            \  /            \  /     __     \  "
					Escribir "/______________\/______________\/_____(__)_____\ "
			FinSi
		FinSi
		
			
			Esperar 500 Milisegundos
		FinPara
	Fin Funcion
	
	// obtiene la elección del jugador
	Funcion eleccionJugador <- ObtenerEleccionJugador
		Borrar Pantalla
		Escribir "¡Ahora intenta adivinar en qué cubo está la pelota (1, 2, 3)!"
		Leer eleccionJugador
	Fin Funcion
	
	// determina el resultado del jugador
	Funcion resultadoJugador <- DeterminarResultadoJugador(eleccionJugador, posicionPelota)
		Si eleccionJugador = posicionPelota Entonces
			resultadoJugador <- "¡Ganaste titán!"
		Sino
			resultadoJugador <- "No acertaste, Intenta otra vez"
		FinSi
	Fin Funcion
	
	//  resultados
	Funcion sin_retorno <- MostrarResultados(eleccionJugador, resultadoJugador, posicionPelota)
		Escribir "La pelota estaba en el cubo ", posicionPelota
		Escribir "Tu elección: ", eleccionJugador, " - ", resultadoJugador
	Fin Funcion
	
	// desea continuar
	Funcion continuar <- PreguntarContinuar
		Escribir "¿Quieres jugar de nuevo? (1 = Sí, 0 = No): "
		Leer continuar
	Fin Funcion
	
	Proceso DescubrirLaPelota
		
		Definir posicionPelota, eleccionJugador, continuar Como Entero
		Definir resultadoJugador Como Cadena
		
		continuar <- 1
		
		Repetir
			
			posicionPelota <- InicializarJuego
			
			posicionPelota <- MezclarVasos(posicionPelota)
			
			eleccionJugador <- ObtenerEleccionJugador
			
			resultadoJugador <- DeterminarResultadoJugador(eleccionJugador, posicionPelota)
			
			sin_retorno <- MostrarResultados(eleccionJugador, resultadoJugador, posicionPelota)
			
			continuar <- PreguntarContinuar
			
		Hasta Que continuar = 0
		
		Escribir "¡Gracias por jugar!"

FinProceso
