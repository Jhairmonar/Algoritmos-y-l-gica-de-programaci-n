Algoritmo Ejercicio2
		Definir promedio, asistencia Como Real
		Definir materiasPerdidas Como Entero
		Definir ingresosBajos, proyectos, ayuda, razonAcad, razonEcon Como Cadena
		
		Escribir "Ingrese promedio academico:"
		Leer promedio
		Escribir "Ingrese materias perdidas:"
		Leer materiasPerdidas
		Escribir "Ingrese porcentaje de asistencia (0-100):"
		Leer asistencia
		Escribir "Tiene ingresos familiares bajos? (Si/No):"
		Leer ingresosBajos
		Escribir "Participa en proyectos? (Si/No):"
		Leer proyectos
		
		Si promedio < 7 O asistencia < 80 Entonces
			ayuda <- "Sin beneficio"
			razonAcad <- "Promedio insuficiente o baja asistencia"
		Sino
			Si promedio >= 9 Y asistencia >= 90 Y materiasPerdidas = 0 Entonces
				ayuda <- "Beca completa"
			Sino 
				Si promedio >= 8 Y asistencia >= 85 Entonces
					ayuda <- "Beca parcial"
				Sino
					ayuda <- "Solo ayuda de materiales"
				FinSi
			FinSi
			
			razonAcad <- "Cumple con el rendimiento minimo"
			
			Si ingresosBajos = "Si" Y proyectos = "Si" Entonces
				razonEcon <- "Aplica bono por situacion economica y proyectos"
				Si ayuda = "Solo ayuda de materiales" Entonces
					ayuda <- "Beca parcial"
				Sino 
					Si ayuda = "Beca parcial" Y materiasPerdidas = 0 Entonces
						ayuda <- "Beca completa"
					FinSi
				FinSi
			Sino
				razonEcon <- "No aplica bonificacion adicional"
			FinSi
		FinSi
		
		Escribir ""
		Escribir "--- RESULTADO DE SOLICITUD ---"
		Escribir "TIPO DE AYUDA: ", ayuda
		Escribir "RAZON ACADEMICA: ", razonAcad
		Escribir "RAZON ECONOMICA: ", razonEcon
		Escribir "OBSERVACION: Proceso finalizado."
FinAlgoritmo
