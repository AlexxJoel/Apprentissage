/*Programa que te permite obtener 3 veces el area de un traingulo*/
#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int i,b,h,a;
	
	for(i=1;i<=3;i++){
		
		printf("Introduce el valor de la base y la altura: ");
		printf("\n");
		scanf("%d",&b);
		scanf("%d",&h);
		
		a=(b*h)/2;
		
		printf("El area es: %d",a);
		printf("\n");
		
	}
	
	system("pause");
	return 0;
}
