Algoritmo sin_titulo
	Escribir "//*MENU-areas*//";
	Escribir "1=circulo/2=cuadrado/3=triangulo"
	Definir i,a,b,c como entero
	para i=1 hasta 10 Con Paso 1 Hacer
		leer num
		segun num hacer
			
			1: escribir "Radio del circulo"
				leer a
				r=3.1416*a^2
				Escribir "el area del circulo es: " r 
				
			2: escribir "lado del cuadrado"
				leer b
				r=b^2
				Escribir "el area del cuadrado es: " r
				
			3: escribir "base y altura del triangulo"
				leer c,b
				r=(c*b)/2
				Escribir "el area del triangulo es: " r
				
		FinSegun
	FinPara
FinAlgoritmo
