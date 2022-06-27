#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main ()

{
	
	int  x,n;
	int num[10];
	
	for(x=1;x<=10;x++){
	printf("introduce numero");
	scanf("%d",&n);
	printf("\n");
	
	if(n>=10){
		
		printf("Guardado");
		num[x]=n;
		printf("\n");
		printf("%d",num[x]);
	
	}
	
	else
	
	{
		
		printf("no se guarda");
		printf("\n");
		printf("%d",num[x]);
		printf("\n");
		
		
	}
	}
	

	
	system("pause");
	return 0;
}
