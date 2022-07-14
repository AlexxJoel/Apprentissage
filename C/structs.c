#include <stdio.h>
#include <stdlib.h>



struct ejemp
{
    int fila;
    char name[30];
    int players[30];
}personas[2];

int main()
{
    int i,j;

    for (i = 0; i < 2; i++)
    {
        printf("\nSeleccione la fila que deesee\n");
        scanf("%i", &personas[i].fila);

        printf("Ingrese el nombre del lider \n");
        scanf("%s", &personas[i].name);


        printf("Ingrese el numero de jugadores \n");
        scanf("%i", &personas[i].players);

    }

    for ( j = 0; j < 2; j++)
    {
        printf("La fila es %i\n", personas[j].fila );
        printf("nombre %s\n", personas[j].name );
        printf("jugadores %i\n", personas[j].players );
        printf("------------------------\n" );
    }
    
    return 0;
}

