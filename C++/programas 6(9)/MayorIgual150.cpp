#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int num;
	
	printf("Introduce el valor de num: ");
	scanf("%d",&num);
	printf("\n");
	
	if(num>=150)
	
	{
		
		printf("Es mayor o igual que 150");
		printf("\n");
	}
	
	else
	
	{
		
		printf("Es menor que 150");
		printf("\n");
	}
	
	system("pause");
	return 0;
}
