#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main (){
	int a,b,c,r;
	printf("introduce tus calificaciones:");
	printf("\n");
	scanf("%d",a);
	scanf("%d",b);
	scanf("%d",c);
	
	r= (a+b+c)/3;
	if(r>=7){
		printf("aprobo");
	}
	else
	{
		printf("reprobo");
	}
	system("pause");
	return 0;
	}
