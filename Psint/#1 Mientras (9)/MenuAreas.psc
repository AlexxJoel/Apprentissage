Algoritmo MenúDeAreas
	Definir i como entero
	dimension ac[10], aci[10], at[10]
	i=1
	mientras i<=10 hacer
		Escribir "Elige la operacióin"
		Escribir "1=Area de un Cuadrado  /  2=Area de un Circulo  /  3=Area de un Triangulo"
		Leer num
		Segun num Hacer
			
			1: Escribir "Introduce el valor de l";
				Leer l;
				r=l*l;
				ac[i]=r
				Escribir "El area es: " , ac[i];
				
			2: Escribir "Introduce el radio";
				Leer r;
				Resul=3.1416*r^2;
				aci[i]=Resul
				Escribir "El area es: " , aci[i];
				
			3: Escribir "Introduce la base y la altura";
				Leer b,h;
				r=(b*h)/2;
				at[i]=r
				Escribir "El area es :" ,at[i];

				
		FinSegun
		i=i+1
	FinMientras
	
	
FinAlgoritmo
