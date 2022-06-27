#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

main (){
	
	int promedio,e,m,q,f,i;
	printf("Introduzca el valor de e: ");
	scanf("%d",&e);
	printf("\n");
		
	printf("Introduzca el valor de m : ");
	scanf("%d",&m);
	printf("\n");
		
	printf("Introduzca el valor de q: ");
	scanf("%d",&q);
	printf("\n");

	printf("Introduzca el valor de f: ");
	scanf("%d",&f);
	printf("\n");
	
	printf("Introduzca el valor de i: ");
	scanf("%d",&i);
	printf("\n");
			
	promedio= (e+m+q+f+i)/5;
	
	printf("el promedio es: %d", promedio);
	printf("\n");

	system("pause");
	return 0;
}
