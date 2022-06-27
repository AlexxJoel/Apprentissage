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
	
	if(n%2==0){
		
		printf("Es multiplo de 2");
		num[x]=n;
		printf("\n");
		printf("%d",num[x]);
	
	}
	
	else
	
	{
		
		printf("No es multiplo de 2");
		printf("\n");
		printf("%d",num[x]);
		printf("\n");
		
		
	}
	}
	

	
	system("pause");
	return 0;
}
