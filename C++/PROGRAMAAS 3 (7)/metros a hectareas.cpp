#include<stdio.h >
#include<stdlib.h>
#include<conio.h>

main (){
	
	int m, millas;;
	printf("ingrese el valor de m:");
	scanf("%d",& m);
	printf("\n");
	
	millas= m*0.000621;

    printf("El resultado es:%d", millas);
    printf("\n");
    
    system ("pause");
    return 0;
}
