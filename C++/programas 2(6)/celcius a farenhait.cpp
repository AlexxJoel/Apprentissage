#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

main(){
	
	int gc, farenhait;
	
	printf("Introduce el valor de gc: ");
	scanf("%d",&gc);
	printf("\n");
	
	farenhait = gc*9/5+32 ;
	
	printf("los farenhait son: %d", farenhait);
	printf("\n");
	
	system("pause");

	return 0;
}
