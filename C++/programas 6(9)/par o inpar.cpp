#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int num;
	
	printf("Introduce el numero para ver si es par o no: ");
	scanf("%d",&num);
	printf("\n");
	
	if(num%2==0)	{
		
		printf("El numero es par");
		printf("\n");
	}
	
	else
	
	{
		
		printf("El numero es impar");
		printf("\n");
	}
	
	system("pause");
	return 0;
}
