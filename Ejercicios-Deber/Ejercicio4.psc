Algoritmo Ejercicio4
		Definir cant Como Entero
		Definir precioHoja, subtotal, desc, recargo, valorAnillado, total Como Real
		Definir tipo, rol, horario, anillado Como Cadena
		
		Escribir "Cantidad de hojas:"
		Leer cant
		Escribir "Tipo (BN/Color):"
		Leer tipo
		Escribir "Rol (Docente/Estudiante):"
		Leer rol
		Escribir "Horario (Normal/Nocturno):"
		Leer horario
		Escribir "Lleva anillado (Si/No):"
		Leer anillado

		Si tipo = "BN" Entonces
			Si cant <= 20 Entonces 
				precioHoja <- 0.05
			Sino 
				Si cant <= 100 Entonces 
					precioHoja <- 0.04
				Sino 
					precioHoja <- 0.03 
				FinSi
			FinSi
		Sino 
			Si cant <= 20 Entonces 
				precioHoja <- 0.20
			Sino 
				Si cant <= 100 Entonces 
					precioHoja <- 0.15
				Sino 
					precioHoja <- 0.12 
				FinSi
			FinSi
		FinSi
				
				subtotal <- cant * precioHoja
				
				desc <- 0
				Si rol = "Docente" Entonces
					desc <- subtotal * 0.05
				FinSi
				Si rol = "Estudiante" Y cant > 50 Entonces
					Si (subtotal * 0.08) > desc Entonces
						desc <- subtotal * 0.08
					FinSi
				FinSi
				recargo <- 0
				Si horario = "Nocturno" Entonces
					recargo <- subtotal * 0.10
				FinSi
				
				valorAnillado <- 0
				Si anillado = "Si" Entonces
					Si cant > 100 Entonces
						valorAnillado <- 0.50 
					Sino
						valorAnillado <- 1.00
					FinSi
				FinSi
				total <- subtotal - desc + recargo + valorAnillado
				Escribir "--- FACTURA ---"
				Escribir "SUBTOTAL: $", subtotal
				Escribir "DESCUENTO: $", desc
				Escribir "RECARGO: $", recargo
				Escribir "ANILLADO: $", valorAnillado
				Escribir "TOTAL: $", total
FinAlgoritmo