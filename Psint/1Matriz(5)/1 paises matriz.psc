Algoritmo arreglos_bi
	dimension P[3,4]
	P[1,1]= "mexico"
	P[2,1]= "argentina"
	P[3,1]= "colombia"
	
	P[1,2]= "Cd jaurez"
	P[2,2]= "buenos aire"
	P[3,2]= "Bogota"
	
	P[1,3]= "alaska"
	P[2,3]= "venezuela"
	P[3,3]= "ecuador"
	
	P[1,4]= "usa"
	P[2,4]= "panama"
	P[3,4]= "chile"
	
	
	
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		escribir "---------------"
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			escribir P[i,j]
			
		Fin Para
	Fin Para
FinAlgoritmo
