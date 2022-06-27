Algoritmo aritmeticos
	Escribir '1=suma/ 2=resta/ 3=multiplicacion,/4=division'
	Leer num
	Escribir 'introduce el valor de a y b'
	Leer a,b
	Segun num  Hacer
		1:
			R <- a+b
			Escribir R
		2:
			R <- a-b
			Escribir R
		3:
			R <- a*b
			Escribir R
		4:
			R <- a/b
			Escribir R
		De Otro Modo:
			Escribir 'operacion no valida'
	FinSegun
FinAlgoritmo

