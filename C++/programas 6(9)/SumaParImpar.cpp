#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int a,b,r;
	
	printf("Introduce el valor de a: ");
	scanf("%d",&a);
	printf("\n");
	
	printf("Introduce el valor de b: ");
	scanf("%d",&b);
	printf("\n");
	
	r=a+b;
	
	if(r%2==0)
	
	{
		
		printf("El resultado de la suma es Par");
		printf("\n");
	}
	
	else
	
	{
		
		printf("El resultado de la suma es impar");
		printf("\n");
	}
	
	system("pause");
	return 0;
}
