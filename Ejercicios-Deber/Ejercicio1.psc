Algoritmo Ejercicio1
		Definir horaLlegada Como Real
		Definir faltas Como Entero
		Definir tieneCredencial, perteneceCurso Como Cadena
		Definir estadoFinal, motivo, prioridad Como Cadena
		
		Escribir "--- SISTEMA DE CONTROL DE ACCESO ---"
		
		Escribir "Ingrese hora de llegada (ej: 7.10):"
		Leer horaLlegada
		Escribir "Ingrese numero de faltas acumuladas:"
		Leer faltas
		Escribir "Tiene credencial? (Si/No):"
		Leer tieneCredencial
		Escribir "Pertenece al curso actual? (Si/No):"
		Leer perteneceCurso
		
		Si tieneCredencial = "No" Entonces
			estadoFinal <- "No puede ingresar"
			motivo <- "No porta credencial"
			prioridad <- "Alta"
		Sino 
			Si perteneceCurso = "No" Entonces
				estadoFinal <- "No puede ingresar"
				motivo <- "No pertenece al curso del horario actual"
				prioridad <- "Alta"
			Sino
				Si faltas >= 5 Entonces
					estadoFinal <- "No puede ingresar"
					motivo <- "Exceso de faltas (5 o mas)"
					prioridad <- "Alta"
				Sino
					Si horaLlegada > 7.10 Entonces
						estadoFinal <- "No puede ingresar"
						motivo <- "Llegada fuera del tiempo de tolerancia"
						prioridad <- "Media"
					Sino
						Si horaLlegada > 7.00 O faltas >= 3 Entonces
							estadoFinal <- "Ingresa con advertencia"
							prioridad <- "Baja"
							Si horaLlegada > 7.00 Y faltas >= 3 Entonces
								motivo <- "Retraso leve y acumulacion de faltas"
							Sino
								Si horaLlegada > 7.00 Entonces
									motivo <- "Ingreso dentro de la tolerancia (10 min)"
								Sino
									motivo <- "Tiene 3 o 4 faltas acumuladas"
								FinSi
							FinSi
						Sino
							estadoFinal <- "Ingresa sin problema"
							motivo <- "Cumple todos los requisitos"
							prioridad <- "Nula"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir ""
		Escribir "--- FORMATO DE INFORME ---"
		Escribir "ESTADO FINAL: ", estadoFinal
		Escribir "MOTIVO: ", motivo
		Escribir "NIVEL DE PRIORIDAD: ", prioridad
		
FinAlgoritmo
