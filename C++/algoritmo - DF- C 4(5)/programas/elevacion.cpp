#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

main (){
	
	int resul, a, b, c;
	printf("Introduzca el valor de a: ");
	scanf("%d",&a);
	printf("\n");
		
	printf("Introduzca el valor de b: ");
	scanf("%d",&b);
	printf("\n");
		
	printf("Introduzca el valor de c: ");
	scanf("%d",&c);
	printf("\n");
		
	resul= a *a*a+b*b*c;
	
	printf("el resultado es: %d", resul);
	printf("\n");

	system("pause");
	return 0;
}
