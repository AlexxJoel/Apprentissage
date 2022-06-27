Algoritmo sin_titulo
	Escribir "//*MENU-conversiones*//";
	Escribir "1=grados centigrados-farenheit/2=farenheit-grados centigrados"
	Definir i,a,b como entero
	para i=1 hasta 10 Con Paso 1 Hacer
		leer num
		segun num hacer
			
			1: escribir "Introduce los centigrados"
				leer a
				r=(a*9/5)+32
				Escribir "los farenheit son: " r 
				
			2: escribir "introduce los farenheit"
				leer b
				r=(b-32)*5/9
				Escribir "grados cemtigrados: " r
				
				
		FinSegun
	FinPara
FinAlgoritmo
