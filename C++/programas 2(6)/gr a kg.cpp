#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main(){
	
	int gr, kilogramos;
	
	printf("Introduce el valor de gr: ");
	scanf("%d",&gr);
	printf("\n");
	
	kilogramos= gr/1000;
	
	printf("los kilogramos son: %d", kilogramos);
	printf("\n");
	
	system("pause");

	return 0;
}
