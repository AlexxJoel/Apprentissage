Algoritmo OPERACION
	Dimension S[10],R[10],D[10]
	Escribir '////////MENU///////'
	Escribir '----Escoge la operacion deseada---'
	Definir i,a,b,re Como Entero
	Para i<-1 Hasta 10 Hacer
		Escribir '1=suma/2=resta/3=division'
		Leer num
		Escribir 'Introduce tus valores (enteros)'
		Leer a,b
		Segun num  Hacer
			1:
				re <- a+b
				S[i] <- re
				Escribir 'el resultado de tu suma es:', S[i] 
				
			2:
				re <- a-b
				R[i] <- re
				Escribir 'el resultado de tu resta es:',	R[i]
			3:
				re <- a/b
				D[i] <- re
				Escribir 'el resultado de tu division es:',D[i]
		FinSegun
	FinPara
FinAlgoritmo

