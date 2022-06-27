#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

main (){
	
	int suma, a, b, c;
	printf("Introduzca el valor de a: ");
	scanf("%d",&a);
	printf("\n");
		
	printf("Introduzca el valor de b: ");
	scanf("%d",&b);
	printf("\n");
		
	printf("Introduzca el valor de c: ");
	scanf("%d",&c);
	printf("\n");
		
	suma= a + b + c;
	printf("\nLa suma es de: %d", suma);
	printf("\n");

	system("pause");
	return 0;
}
