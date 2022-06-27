#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main (){
	
	int b,h,area;
	
	printf("Introduce el valor de la base:");
	scanf("%d",&b);
	printf("\n");
	
	
	printf("Introduce el valor de la altura:");
	scanf("%d",&h);
	printf("\n");
	
	area= (b * h)/2;
	printf("\n El area es: %d", area);
	printf("\n");
	
	system("pause");
	return 0;
}
