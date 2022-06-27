#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

main (){
	
	int r, a, b,resul;
	printf("Introduzca el valor de a: ");
	scanf("%d",&a);
	printf("\n");
		
	printf("Introduzca el valor de b: ");
	scanf("%d",&b);
	printf("\n");
		
	r= a + b;
	resul= r*r;
	
	
	
	printf("el resultado es: %d", resul);
	printf("\n");

	system("pause");
	return 0;
}
