#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int calif;
	
	printf("Introduce tu calificacion: ");
	scanf("%d",&calif);
	printf("\n");
	
	if(calif>=6)	{
		
		printf("Aprobo");
		printf("\n");
		
	}
	
	else 
	
	{
		
		printf("Reprobo");
		printf("\n");
		
	}
	
	system("pause");
	return 0;
}
