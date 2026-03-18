Algoritmo Ejercicio3
		Definir l1, l2, l3, h, ang, area Como Real
		Definir tLados, tAngulo, consistencia Como Cadena
		
		Escribir "Ingrese Lado 1"
		Leer l1
		Escribir "Ingrese Lado 2"
		Leer l2
		Escribir "Ingrese Lado 3"
		Leer l3
		Escribir "Ingrese Altura"
		Leer h
		Escribir "Ingrese el angulo principal"
		Leer ang
		
		Si (l1+l2 > l3) Y (l1+l3 > l2) Y (l2+l3 > l1) Entonces
			
			Si l1=l2 Y l2=l3 Entonces
				tLados <- "Equilatero"
			Sino
				Si l1=l2 O l1=l3 O l2=l3 Entonces
					tLados <- "Isosceles"
				Sino
					tLados <- "Escaleno"
				FinSi
			FinSi
			
			Si ang = 90 Entonces
				tAngulo <- "Rectangulo"
			Sino
				Si ang > 90 Entonces
					tAngulo <- "Obtusangulo"
				Sino
					tAngulo <- "Acutangulo"
				FinSi
			FinSi
			
			area <- (l1 * h) / 2
			
			Si h > l2 O h > l3 Entonces
				consistencia = "Advertencia: Altura inconsistente"
			Sino
				consistencia = "Datos consistentes"
			FinSi
			
			Escribir "VALIDEZ: Triangulo Valido"
			Escribir "TIPO POR LADOS: ", tLados
			Escribir "TIPO POR ANGULO: ", tAngulo
			Escribir "AREA: ", area
			Escribir "CONSISTENCIA: ", consistencia
		Sino
			Escribir "VALIDEZ: No es un triangulo real"
		FinSi
FinAlgoritmo
