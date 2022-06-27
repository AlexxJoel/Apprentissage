Algoritmo sin_titulo
	Escribir "//*MENU-conversion*//";
	Escribir "1=horas-minutos/2=minutos-horas/3=segundos-minutos"
	Definir i,a,b,c como entero
	para i=1 hasta 10 Con Paso 1 Hacer
		leer num
		segun num hacer
			
			1: escribir "introduce las horas"
				leer a
				r=a*60
				Escribir "Los minutos son: " r 
				
			2: escribir "introduce los minutos"
				leer b
				r=b/60
				Escribir "horas son: " r
				
			3: escribir "introduce los segumdos"
				leer c
				r=c/60
				Escribir "minutos son: " r
				
		FinSegun
	FinPara
FinAlgoritmo
