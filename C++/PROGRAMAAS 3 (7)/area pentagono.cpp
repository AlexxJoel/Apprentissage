#include<stdio.h >
#include<stdlib.h>
#include<conio.h>

main (){
	
	int p ,a , area;
	printf("ingrese el valor de p:");
	scanf("%d",& p);
	printf("\n");
	
	printf("ingrese el valor de a:");
	scanf("%d",& a);
	printf("\n");

	area= p*a/2;

    printf("El resultado es:%d", area);
    printf("\n");
    
    system ("pause");
    return 0;
}
