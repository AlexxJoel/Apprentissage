#include<stdio.h >
#include<stdlib.h>
#include<conio.h>

main (){
	
	int b ,B , h , area ;
	printf("ingrese el valor de b:");
	scanf("%d",& b);
	printf("\n");
	
	printf("ingrese el valor de B:");
	scanf("%d",& B);
	printf("\n");
	
	printf("ingrese el valor de h:");
	scanf("%d",& h);
	printf("\n");
	
	area= b+B*h/2 ;

    printf("El resultado es:%d", area);
    printf("\n");
    
    system ("pause");
    return 0;
}
