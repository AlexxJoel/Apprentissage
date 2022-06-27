Proceso positivosl
	Dimension n[10,2]
	definir i como entero
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		para j=1 hasta 2 hacer
			leer a
			Si a>150 Entonces
				escribir "guardado"
				n[i,j]=a
			SiNo
				Escribir "Nelno se guarda >:v"
				n[i,j]=a
				
			Fin Si
			mostrar n[i,j]
		FinPara
		
	FinPara
	
FinProceso
