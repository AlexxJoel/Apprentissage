#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main(){
	
	char nombre [30];
	int edad;
	
	printf("Escriba su nombre:");
	scanf("%s",nombre);
	
	printf("\n Escriba la edad de %s:", nombre);
	scanf("%d",&edad);
	printf("\n");
	
	printf("Su edad es:%d", edad);
	printf("\n");

	system("pause");
	return 0;
}
