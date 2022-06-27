Algoritmo aritmeticos
	Escribir '1=area cuadrado/ 2=area triangulo/ 3=area circulo'
	Leer num
	Segun num  Hacer
		1:
			Escribir 'introducir el valor de a'
			Leer a
			R <- a*a
			Escribir R
		2:
			Escribir 'introducir el valor de a y b'
			Leer a,b
			R <- a*b/2
			Escribir R
		3:
			Escribir 'introducir valor de r'
			Leer R
			R <- 3.1416*R^2
			Escribir R
		De Otro Modo:
			Escribir 'operacion no valida'
	FinSegun
FinAlgoritmo

