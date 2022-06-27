#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

main (){
	
	int  a,porcentaje;
	printf("Introduzca el valor de a: ");
	scanf("%d",&a);
	printf("\n");
		
    porcentaje = (15*a)/100;
	
	printf("el resultado es: %d", porcentaje);
	printf("\n");

	system("pause");
	return 0;
}
