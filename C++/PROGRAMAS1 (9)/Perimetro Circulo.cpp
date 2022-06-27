#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main(){
	
	int r,perimetro;
	
	printf("Introduce el valor de r: ");
	scanf("%d",&r);
	printf("\n");
	
	perimetro=(2*3.1416)*r;
	
	printf("El perimetro es: %d", perimetro);
	printf("\n");

	system("pause");
	return 0;
}
