Algoritmo Ejercicio8
		Definir n1, n2, n3, prom, asistencia Como Real
		Definir proyecto, plagio, estado, obsDisc, obsRend Como Cadena
		Escribir "Ingrese Nota 1, Nota 2 y Nota 3:"
		Leer n1, n2, n3
		Escribir "Porcentaje de asistencia (0-100):"
		Leer asistencia
		Escribir "Entrego proyecto final? (Si/No):"
		Leer proyecto
		Escribir "Cometio plagio? (Si/No):"
		Leer plagio
	
		prom <- (n1 + n2 + n3) / 3
		obsRend <- "Rendimiento Normal"
		
		Si plagio = "Si" Entonces
			estado <- "REPROBADO"
			obsDisc <- "Sancion por Plagio"
		Sino
			Si asistencia < 70 Entonces
				estado <- "REPROBADO"
				obsDisc <- "Falta de asistencia"
			Sino
				obsDisc <- "Conducta adecuada"
				Si prom >= 9 Y asistencia >= 95 Y proyecto = "Si" Entonces
					estado <- "APROBADO CON FELICITACION"
				Sino
					Si prom >= 7 Y proyecto = "Si" Entonces
						estado <- "APROBADO"
					Sino
						Si (prom >= 5 Y prom < 7) O (proyecto = "No") Entonces
							estado <- "RECUPERACION"
						Sino
							estado <- "REPROBADO"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		Si (n1=10 O n2=10 O n3=10) Entonces
			bajas <- 0
			Si n1 < 4 Entonces
				bajas <- bajas + 1
			FinSi
			Si n2 < 4 Entonces
				bajas <- bajas + 1
			FinSi
			Si n3 < 4 Entonces
				bajas <- bajas + 1
			FinSi
			
			Si bajas >= 2 Entonces
				obsRend <- "Rendimiento Irregular"
			FinSi
		FinSi
		
		Escribir "--- INFORME ACADEMICO ---"
		Escribir "PROMEDIO: ", prom
		Escribir "ESTADO: ", estado
		Escribir "DISCIPLINA: ", obsDisc
		Escribir "OBSERVACION: ", obsRend
FinAlgoritmo