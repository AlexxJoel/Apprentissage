/*Programa que  permite calcular el area de un circulo 4 veces*/
#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main ()

{
	
	int i,a,r,b;
	
	for(i=1;i<=4;i++){
		
		printf("Introduce el radio: ");
		printf("\n");
		scanf("%d",&r);
		
		a=r*r;
		b=3.1416*a;
		
		printf("El area es : %d",b);
		printf("\n");
	}
	{
	}
	system("pause");
	return 0;
}
