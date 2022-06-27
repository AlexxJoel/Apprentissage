Algoritmo FactorialdeUnNumero
	Dimension f[10]
	Definir fact,n Como Real
	Definir i, k, m Como Entero
	Escribir "Introduce el numero deseado"
	Leer n
	fact<-1
	Si n>=0 Entonces
		k=0
		i=1
		mientras i<=n hacer
			k<-k+1
			fact<-fact*i
			f[k]<-fact
			i=i+1
		finmientras
		Escribir "El factorial es:" , fact
		m=1
		mientras m<=10
			Escribir f[m]
			m=m+1
		FinMientras
		
		
	SiNO 
		
		Escribir "No existe factorial"
	FinSi
	
FinAlgoritmo
