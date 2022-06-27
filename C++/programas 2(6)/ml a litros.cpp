#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main(){
	
	int ml, litros;
	
	printf("Introduce el valor de ml: ");
	scanf("%d",&ml);
	printf("\n");
	
	litros= ml/1000;
	
	printf("los litros son: %d", litros);
	printf("\n");
	
	system("pause");

	return 0;
}
