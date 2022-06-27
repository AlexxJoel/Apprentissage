//calificacion
#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main ()

{
	
	int i,a,promedio,r;
	

	for(i=1;i<=4;i++)
	{
	
	printf("introduce calificacion:");
	scanf("%d",&a);
	promedio=promedio+a;
	
	}
	r=promedio/4;
	
	printf("tu promdio es:%d",r);
	
    system("pause");
    return 0;

}
