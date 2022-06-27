#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int edad;
	
	printf("Introduce tu edad: ");
	scanf("%d",&edad);
	printf("\n");
	
	if(edad>=18)
	
	{
		
		printf("Eres mayor de edad");
		printf("\n");
		
	}
	
	else
	
	{
		
		printf("Eres menor de edad");
		printf("\n");
	}
	
	system("pause");
	return 0;
}
	

