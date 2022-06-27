#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main (){
	int a;
	printf("introduce un numero:");
	printf("\n");
	scanf("%d",a);
	
	if(a%8==0){
		printf("Es multiplo de 8");
	}
	else
	{
		printf("Es no multiplo de 8");
	}
	system("pause");
	return 0;
	}
