Algoritmo OPERACION
	Dimension S[10,3]
	Escribir '////////MENU///////'
	Escribir '----Escoge la operacion deseada---'
	Definir i,a,b,re Como Entero
	Para i<-1 Hasta 10 Hacer
		para j=1 hasta 3 con paso 1 Hacer
			Escribir '1=suma/2=resta/3=division'
			Leer num
			Escribir 'Introduce tus valores (enteros)'
			Leer a,b
			Segun num  Hacer
				1:
					re <- a+b
					S[i,j] <- re
					Escribir 'el resultado de tu suma es:', S[i,j] 
					
				2:
					re <- a-b
					S[i,j] <- re
					Escribir 'el resultado de tu resta es:', S[i,j]
				3:
					re <- a/b
					S[i,j] <- re
					Escribir 'el resultado de tu division es:',S[i,j]
			FinSegun
		FinPara
		
	FinPara
FinAlgoritmo

