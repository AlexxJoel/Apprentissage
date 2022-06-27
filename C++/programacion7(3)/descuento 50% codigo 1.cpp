#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main (){
	int x,n,z,re;
	printf("introduce el precio del producto: " );
	scanf("%d",x);
	printf("introduce el codigo :" ) ;
	scanf("%d",n);

	if(n=1){
	 z=(50*x)/100;
	 re = x-z;
	 printf("usted pagara con descuento : ", re);
	}
	else
	{
		printf("no tiene descuento V:", x );
	}
	system("pause");
	return 0;
	}
