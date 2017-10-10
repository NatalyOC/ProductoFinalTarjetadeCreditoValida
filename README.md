#**PRODUCTO FINAL**
##TARJETA DE CRÉDITO VALIDA

==
1. Diagrama de Flujo
    1.1 Diagrama de Flujo
    ![recursos](assets/img-read/recursos.jpg)
2. Pseudocódigo
---
SubProceso message <- isValidCard ( num )
	Para i<-0 Hasta num.length Con Paso 1 Hacer
		element<-entero(num.charAt(i))
		arr.push(element)
	Fin Para
	newArr=arr.reverse()
	Para j<-1 Hasta newArr.length Con Paso 1 Hacer
		Si j mod 2 ==0 Entonces
			doublePair<-newArr(j-1)*2
			Si doublePair>=10 Entonces
				digitOne<-entero(doublePair/10)
				digitTwo<-doublePair mod 10
			Fin Si
		SiNo
			newArr(j-1)<-doublePair
		Fin Si
	Fin Para
	sumElement<-0
	Para k<-0 Hasta newArr.length Con Paso 1 Hacer
		sumElement<-newArr[k]+sumElement
	Fin Para
	div<-sumElement mod 10
	Si div== 0 Entonces
		Escribir "Es una tarjeta valida",message
	SiNo
		Escribir "No es una tarjeta valida",message
	Fin Si
Fin SubProceso


Proceso TarjetadeCreditoValida
	
	Escribir "Ingrese número de Tarjeta de Credito a Validar:"
	Leer card
	Si card='' y card=isNaN Entonces
		Escribir "Esta ingresando campo vacio o letras, Ingrese los datos."
	SiNo
		resultado=isValidCard(card)
	Fin Si
	
FinProceso
