Algoritmo OPERACION
	Dimension S[10],R[10],D[10]
	Escribir "-Menu de operaciones-"
	Escribir "Elige la operación que deseas"
	Definir i Como Entero
	i=1
mientras i<=10 hacer
		Escribir "1=SUMA / 2=RESTA / 3=DIVISION"
		Leer num 
		Escribir "Introduce los numeros para la operacion"
		Leer a,b
		Segun num  Hacer
			1: resul<- a+b
				Escribir "La suma de :" , a "+" ,b "=" ,resul
				S[i] <- resul
				Escribir S[i] 
			2:
				resul <- a-b
				Escribir "La resta de:" , a , "-" , b , "=" , resul
				R[i] <- resul 
				Escribir R[i] 
			3:
				re <- a/b
				Escribir "La division de:" , a , "/" , b , "=" ,resul
				D[i] <- resul 
				Escribir D[i] 
		FinSegun
		i=i+1
	finmientras
FinAlgoritmo


	           