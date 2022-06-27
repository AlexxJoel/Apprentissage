/*Programa que permite calcular 5 veces el area de un cuadrado*/
#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main ()

{
	
	int i,a,l;
	
	for(i=1;i<=5;i++){
		
		printf("Introduce el area de: ");
		printf("\n");
		scanf("%d",&l);
		
		a=l*l;
		
		printf("El area es: %d",a);
		printf("\n");
	}
	
	system("pause");
	return 0;
}
