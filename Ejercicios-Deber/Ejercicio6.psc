Algoritmo Ejercicio6
		Definir numEst, numDias Como Entero
		Definir cTrans, cHosp, cAlim, subtotal, desc, total, totalInd, precioT, precioH Como Real
		Definir transporte, comida, instituc Como Cadena
		
		Escribir "Numero de estudiantes:"
		Leer numEst
		Escribir "Tipo de transporte (Bus/Avion):"
		Leer transporte
		Escribir "Numero de dias:"
		Leer numDias
		Escribir "Costo hospedaje por dia por persona:"
		Leer precioH
		Escribir "Incluye alimentacion? (Si/No):"
		Leer comida
		Escribir "Aplica descuento institucional? (Si/No):"
		Leer instituc
		
		Si transporte = "Bus" Entonces
			Si numEst > 20 Entonces
				precioT <- 20
			Sino
				precioT <- 30
			FinSi
		Sino
			Si numEst > 20 Entonces
				precioT <- 150
			Sino
				precioT <- 200
			FinSi
		FinSi
				cTrans <- (numEst - 1) * precioT
				cHosp <- numEst * numDias * precioH
				Si numDias > 3 Entonces
					cHosp <- cHosp * 0.90 
				FinSi
				cAlim <- 0
				
				Si comida = "Si" Entonces
					cAlim <- numEst * numDias * 15
				FinSi
				subtotal <- cTrans + cHosp + cAlim
				
				desc <- 0
				Si instituc = "Si" Y subtotal > 2000 Entonces
					desc <- subtotal * 0.05
				FinSi
				
				total <- subtotal - desc
				totalInd <- total / numEst
				Escribir "--- REPORTE DE VIAJE ---"
				Escribir "Transporte: $", cTrans
				Escribir "Hospedaje: $", cHosp
				Escribir "Alimentacion: $", cAlim
				Escribir "Descuento: $", desc
				Escribir "Total General: $", total
				Escribir "Costo por Estudiante: $", totalInd
				
				Si totalInd > 250 Entonces
					Escribir "RECOMENDACION: Viaje no recomendable (Costo muy alto)"
				Sino
					Escribir "RECOMENDACION: Viaje viable"
				FinSi
FinAlgoritmo
