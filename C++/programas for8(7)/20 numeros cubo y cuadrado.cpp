//calificacion
#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main ()

{
	
	int i,a,cu,cd;
	
	
	for(i=1;i<=20;i++)
	{
	
    printf("introduce tus numeros enteros:");
	scanf("\n%d",&a);
	cu=a*a;
	cd=a*a*a;
	printf(" cuadrado es:%d",cu);
	printf("\n");	
	printf("cubo es:%d",cd);
	printf("\n");
	
	}
	

	
    system("pause");
    return 0;

}
