#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int num;
	
	printf("Introduce el valor del numero: ");
	scanf("%d",&num);
	printf("\n");
	
	if(num>100)
	
	{
		
		printf("Es mayor que 100");
		printf("\n");
		
	}
	
	else
	
	{
		
		printf("Es menor que 100");
		printf("\n");
		
	}
	
	system("pause");
	return 0;
}
