#include <stdio.h>
#include <stdlib.h>

// USO DE FUNCIONES Y RECURSIVIDAD SI ES PERMITIDO.
int hor_fun(int);
int hor_fun1(int);
int linea(int);
int hor_fun(int hora)
{
    return (hora);
}
int hor_fun1(int horaf)
{
    return (horaf);
}
int linea(int linea)
{
}
int main()
{
    int opc, opc1, s = 1, hora = 0, horaf = 0, lin[12], opli;
    char li;
    while (s == 1)
    {
        system("clear");
        printf("Seleccione la opcion del menu que desee.\n");
        printf("1................Establecer horario de funcionamiento.\n");
        printf("2................Modificar horario de terminacion de funcionamiento.\n");
        printf("3................Establecer las lineas que estaran en funcionamiento.\n");
        printf("4................Establecer el uso de una linea.\n");
        printf("5................Liberar una linea.\n");
        printf("6................Mostrar informacion de las lineas.\n");
        printf("7................Mostrar informacion de una linea.\n");
        printf("8................SALIR.\n");
        scanf("%d", &opc);
        switch (opc)
        {
        case 1:
            system("clear");
            printf("OPCION 1.\n-----------------------------------------------------------\nIntroduzca el horario de funcionamiento (formato 24 horas).\n-----------------------------------------------------------\n");
            printf("Ingrese la hora de funcionamiento inicial: ");
            scanf("%d", &hora);
            printf("\nIngrese la hora de funcionamiento final: ");
            scanf("%d", &horaf);
            printf("La hora de funcionamiento inicial es : %d ", hor_fun(hora));
            printf("\nLa hora de funcionamiento final es : %d\n", hor_fun1(horaf));
            printf("\nDesea modificar el horario de terminacion");
            printf("\n1...si\n2...no\n");
            scanf("%d", &opc1);
            if (opc1 == 2)
            {
                for (int i = 0; i < 12; i++)
                {
                    int dispo[i], res;
                    printf("La linea %d esta disponible.\n1....si\n2....no\n", i + 1);
                    scanf("%d", &res);
                    if (res == 1)
                    {
                        dispo[i] = i;
                        printf("%d", dispo[i]);
                    }
                }
            }

            printf("\n1....salir.\n");
            scanf("%d", &s);
            break;
        case 2:
            if (hora > 0)
            {
                system("clear");
                printf("OPCION 2.\n Modifique el horario de funcionamiento.\n");
                printf("Ingrese la nueva hora de funcionamiento final: ");
                scanf("%d", &horaf);
                printf("La hora de funcionamiento inicial es : %d", hor_fun(hora));
                printf("\nLa hora de funcionamiento final es: %d", hor_fun1(horaf));
                printf("1....salir.\n");
                scanf("%d", &s);
            }
            else
            {
                s++;
                system("clear");
                printf("AUN NO HAY UNA HORA INICIAL DE FUNCIONAMIENTO. INGRESE UNA PRIMERO Y VUELVA A INTENTARLO.\n");
                printf("1.........Regresar al menu incial\n");
                scanf("%d", &s);
            }
            break;
        case 3:
            system("clear");
            printf("OPCION 3.\n Establecer las lineas que estaran en funcionamiento.\n");
            for (int i = 0; i < 12; i++)
            {
                printf("La linea %d estará en funcionamiento: \n(S)i\n(N)o\n", i + 1);
                scanf("%s", &li);
                if (li == 's')
                {
                    printf("Seleccione la opcion para la linea: \n");
                    printf("1............. DISPONIBLE.\n");
                    printf("2............. EN USO.\n");
                    printf("3............. FUERA DE SERVICIO.\n");
                    scanf("%d", &opli);
                }
            }
            printf("1....salir.\n");
            scanf("%d", &s);
            break;
        case 4:
            system("clear");
            printf("OPCION 4.\n Establecer el uso de una linea.\n");
            printf("1....salir.\n");
            scanf("%d", &s);
            break;
        case 5:
            system("clear");
            printf("OPCION 5.\n Liberar una linea.\n");
            printf("1....salir.\n");
            scanf("%d", &s);
            break;
        case 6:
            system("clear");
            printf("OPCION 6.\n Mostrar informacion de las lineas.\n");
            printf("1....salir.\n");
            scanf("%d", &s);
            break;
        case 7:
            system("clear");
            printf("OPCION 7.\n Mostrar informacion de una linea.\n");
            printf("1....salir.\n");
            scanf("%d", &s);
            break;
        case 8:

            if (opc == 8)
            {
                system("clear");
                s = 2;
                printf("GRACIAS POR UTILIZAR EL PROGRAMA.");
            }
            break;
        default:
            if (opc > 8)
            {
                system("clear");
                printf("La opcion introducida no es valida.\n");
            }
        }
    }

    return 0;
}