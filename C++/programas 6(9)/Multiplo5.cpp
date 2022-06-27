#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int num;
	
	printf("Introduce el numero: ");
	scanf("%d",&num);
	printf("\n");
	
	if(num%5==0)
	
	{
		
		printf("Es multiplo de 5");
		printf("\n");
		
	}
	
	else
	
	{
		
		printf("No es mulltiplo");
		printf("\n");
		
	}
	
	system("pause");
	return 0;
}
