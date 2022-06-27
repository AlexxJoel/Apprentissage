#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

main (){
	
	int  a,porcentaje,r;
	printf("Introduzca el valor de a: ");
	scanf("%d",&a);
	printf("\n");
		
    r = (20*a)/100;
    porcentaje=a-r;
	
	printf("el resultado es: %d", porcentaje);
	printf("\n");

	system("pause");
	return 0;
}
