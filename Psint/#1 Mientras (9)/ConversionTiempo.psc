Algoritmo ConversionesTiempo
	Definir i Como Entero
	Dimension hu[10], mi[10], se[10]
	i=1
	mientras i<=10 hacer 
		Escribir "Escoje la conversion";
		Escribir "1=Horas a Minutos  /  2=Minutos a Horas  /  3=Segundos a Minutos"
		Leer num
		Segun num Hacer 
			
			1:Escribir "Introduce las horas"
				Leer h
				r=h*60;
				hu[i]=r
				Escribir hu[i] , "Minutos"
				
			2:Escribir "Introduce los minutos"
				Leer m;
				r=m/60;
				mi[i]=r
				Escribir mi[i], "Horas"
				
			3:Escribir "Introduce los segundos"
				Leer s;
				r=s/60;
				se[i]=r
				Escribir se[i] , "Segundos";
		FinSegun
		i=i+1
	FinMientras
	
	
FinAlgoritmo
