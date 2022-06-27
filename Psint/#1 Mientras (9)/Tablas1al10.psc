Algoritmo TABLA1Al10Corregida
	Dimension o1[10],o2[10],o3[10];
	Definir i,a como Entero
	i=1
	mientras i<=10 hacer
		a=1
		mientras a<=10 hacer
			
			o1[a]=a //Mete los valores a pantalla//
			o2[i]=i //Mte los valores del arreglo llamado "o2"//
			o3[i]=o2[i]*o1[a]  //Mete los valores  resultantes de la multiplicacion de los arreglos//
			
			Escribir o2[i], "*" , o1[a], "=" , o3[i]
			a=a+1
		finmientras
		i=i+1
	FinMientras
	

	
FinAlgoritmo
