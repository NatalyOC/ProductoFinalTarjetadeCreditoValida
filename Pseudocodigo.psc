
Proceso tarjetaCreditoValida
	Escribir "Ingrese número de Tarjeta de Credito a Validar:"
	leer card
	
	Si card="" Entonces
		Escribir "Esta ingresando campo vacio o letras, Ingrese los datos"
	SiNo
		SubProceso message <- isValidCard ( num )
			Para variable_numerica<-valor_inicial Hasta valor_final Con Paso paso Hacer
				secuencia_de_acciones
			Fin Para
		Fin SubProceso
		
	Fin Si
FinProceso
