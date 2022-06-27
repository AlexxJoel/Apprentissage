Algoritmo aritmeticos
	Escribir '1=volumen hexaedro/ 2=volumen ortaedro/ 3=volumen cono'
	Leer num
	Segun num  Hacer
		1:
			Escribir 'introducir el valor de a'
			Leer a
			R <- a^3
			Escribir R
		2:
			Escribir 'introducir el valor de a, b , h'
			Leer a,b,h
			R <- a*b*h
			Escribir R
		3:
			Escribir 'introducir valor de AB y h'
			Leer AB,h
			R <- AB*h
			Escribir R
		De Otro Modo:
			Escribir 'operacion no valida'
	FinSegun
FinAlgoritmo

