Algoritmo Ejercicio7
		Definir lAnt, lAct, consumo, costoBase, final, habitanteProm Como Real
		Definir numHab Como Entero
		Definir tipoV, altoC, deuda, alerta Como Cadena
		
		Escribir "Lectura Anterior (kWh):"
		Leer lAnt
		Escribir "Lectura Actual (kWh):"
		Leer lAct
		Escribir "Numero de habitantes:"
		Leer numHab
		Escribir "Tipo de vivienda (Social/Normal):"
		Leer tipoV
		Escribir "Tiene artefactos de alto consumo? (Si/No):"
		Leer altoC
		Escribir "Tiene deuda anterior? (Si/No):"
		Leer deuda
		
		Si lAct < lAnt Entonces
			Escribir "Error: Lectura actual no puede ser menor a la anterior."
		Sino
			consumo <- lAct - lAnt
			Si consumo <= 150 Entonces
				costoBase <- consumo * 0.10
			Sino
				costoBase <- consumo * 0.15
			FinSi
			
			final <- costoBase
			alerta <- "Consumo dentro del rango normal"
			Si tipoV = "Social" Y consumo < 100 Entonces
				final <- final * 0.75
				Escribir "Aplicado Subsidio del 25%"
			FinSi
			
			Si deuda = "Si" Entonces
				final <- final + (costoBase * 0.05)
				Escribir "Recargo por deuda del 5%"
			FinSi
			
			habitanteProm <- consumo / numHab
			Si habitanteProm > 100 Entonces
				alerta <- "ALERTA: Consumo per capita excesivo"
			FinSi
			
			Si altoC = "Si" Y consumo > 300 Entonces
				alerta <- "RIESGO: Sobrefacturacion por artefactos de alto consumo"
			FinSi
			
			Escribir "--- FACTURA ELECTRICA ---"
			Escribir "Consumo Total: ", consumo, " kWh"
			Escribir "Costo Base: $", costoBase
			Escribir "TOTAL A PAGAR: $", final
			Escribir "MENSAJE: ", alerta
		FinSi
FinAlgoritmo