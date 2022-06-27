#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main(){
	
	int l,perimetro;
	
	printf("Introduce el valor de l: ");
	scanf("%d",&l);
	printf("\n");
	
	perimetro= l + l + l + l;
	
	printf("El periemtro es: %d", perimetro);
	printf("\n");
	
	system("pause");
	return 0;
}
