#include<stdio.h >
#include<stdlib.h>
#include<conio.h>

main (){
	
	int ml, pulgadas;
	printf("ingrese el valor de ml:");
	scanf("%d",& ml);
	printf("\n");
	
	pulgadas= ml* 0.0094  ;

    printf("El resultado es:%d", pulgadas);
    printf("\n");
    
    system ("pause");
    return 0;
}
