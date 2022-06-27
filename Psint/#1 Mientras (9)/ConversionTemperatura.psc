Algoritmo ConversionDeTemperaturas
	Definir i Como Entero;
	Dimension Fu[10],Cu[10];
	i=1;
	mientras i<=10 hacer
			
		Escribir "Escoje la conversion deseada";
		Escribir " 1=De Celcius/Centigrados a Farenhait  /  2=De farenhait a Celcius/Centigrados"
		Leer num
		Segun num Hacer 
			
			1: Escribir "Introduce la cantidad de Grados Centigrados";
				Leer c;
				r=c*9/5+32;
				Fu[i]=r
				Escribir  Fu[i] , "grados Farenhait"
				
				
				
			2: Escribir "Introduce la cantidad de Grados Farenhait"
				Leer f;
				r=(f-32)*5/9;
				Cu[i]=r
				Escribir Cu[i] , "Grados Centigrados"
				
			
		FinSegun
		i=i+1
	FinMientras
	
	
FinAlgoritmo

