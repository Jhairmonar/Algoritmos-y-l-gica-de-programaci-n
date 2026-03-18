Algoritmo Ejercicio5
		Definir saldoU, efectivoC, monto, residuo Como Real
		Definir b20, b10, b5, b1 Como Entero
		saldoU <- 300 
		efectivoC <- 500 
		
		Escribir "Saldo disponible: $", saldoU
		Escribir "Ingrese monto a retirar:"
		Leer monto
		
		Si monto <= 0 Entonces
			Escribir "Error: Monto invalido."
		Sino
			Si monto > saldoU O monto > efectivoC Entonces
				Escribir "Operacion rechazada: Fondos insuficientes."
			Sino
				residuo <- monto
				b20 <- trunc(residuo / 20)
				residuo <- residuo MOD 20
				b10 <- trunc(residuo / 10)
				residuo <- residuo MOD 10
				b5 <- trunc(residuo / 5)
				residuo <- residuo MOD 5
				b1 <- trunc(residuo)
				residuo <- 0 
				
				Escribir "Retiro exitoso. Entregando:"
				Escribir b20, " billetes de $20"
				Escribir b10, " billetes de $10"
				Escribir b5, " billetes de $5"
				Escribir b1, " billetes de $1"
				
				saldoU <- saldoU - monto
				efectivoC <- efectivoC - monto
				
				Escribir "Tu nuevo saldo: $", saldoU
				Escribir "Efectivo restante en cajero: $", efectivoC
			FinSi
		FinSi
FinAlgoritmo