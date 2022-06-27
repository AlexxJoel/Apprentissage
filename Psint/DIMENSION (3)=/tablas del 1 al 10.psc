Algoritmo Tablas
	Dimension o1[10],o2[10],o3[10]
	Definir i,a,r Como Entero
	Para i<-1 Hasta 10 Hacer
		Para a<-1 Hasta 10 Hacer
			o1[a] <- a
			o2[i] <- i
			o3[i] <- o1[a] * o2[i]
			Escribir 'El resulatdo de ',o2[i],' * ',o1[a],' : ', o3[i]
			
		FinPara
	FinPara
FinAlgoritmo

