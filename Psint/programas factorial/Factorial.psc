Algoritmo FactorialdeUnNumero
	Dimension f[10]
	Definir fact,n Como Real
	Definir i, k, m Como Entero
	Escribir "Introduce el numero deseado"
	Leer n
	fact<-1
	Si n>=0 Entonces
		k=0
		Para i<-1 Hasta n con Paso 1 Hacer
			k<-k+1
			fact<-fact*i
			f[k]<-fact
			
		FinPara
		
		para l<-1 hasta 10 Hacer //extraer lo que almacena en el arreglo
			Escribir f[l]
		FinPara 
		
		Escribir "el total del factorial es; ",f[k]
	SiNO 
		
		Escribir "No existe factorial"
		
		
	FinSi
	
	
FinAlgoritmo
