#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h> //Boleanos
bool verificarHorario(bool horarioEstablecido);
void bucarEnUso(int contador, int lineaBuscar);

// declararse datos en la función main.
struct DatosGeneral
{
	int disponibles;
	char varNombres[30];
	int group;
} personas[3][12];

int main()
{ // Funcion Principal
	// Variables de uso

	int menu = 0, lineaLiberar = 0, lineaBuscar = 0, horaInicial = 0, horaFinal = 0, tmpHoraFinal = 0, opciones = 0, i = 0, j = 0, disponibles = 0, contador = 0, fila = 0, contadorPersonas = 0, horarioOcupadoInicio = 0, horarioOcupadoFinal = 0, tiempoUsar = 0;
	bool horarioEstablecido = false;

	// Para almacenar la información de las líneas debe usarse un arreglo
	int linea[12];

	/*. .  implementada en una función o más funciones según
	se requiera a las cuales se le envíen como argumentos, los arreglos y/o datos requeridos para cada opción. Además,
	cuando sea requerido, se deben usar valores de retorno de las funciones de tal manera que la información sea usada
	correctamente. No todas las funciones pueden tener void como tipo de dato de retorno
	*/

	do
	{
		printf("------------------------------------Menu---------.\n");
		printf("1- Establecer horario de funcionamiento.\n");
		printf("2- Modificar horario de terminacion de funcionamiento.\n");
		printf("3- Establecer las lineas que estaran en funcionamiento.\n");
		printf("4- Establecer el uso de una linea.\n");
		printf("5- Liberar una linea.\n");
		printf("6- Mostrar informacion de las lineas.\n");
		printf("7- Mostrar informacion de una linea.\n");
		printf("8- SALIR.\n");
		printf("Selecciona una opcion :");
		scanf("%d", &menu);
		// Menu
		switch (menu)
		{
		case 1: // Establecer horario de funcionamiento
			printf("--------------Establecer Horario-----------\n");
			printf("Formato 24 Horas \n");
			if (!verificarHorario(horarioEstablecido))
			{
				do
				{
					printf("Ingrese la hora de funcionamiento inicial (Solo numero) : \n");
					scanf("%d", &horaInicial);
					printf("Ingrese la hora de funcionamiento final (Solo numero) : \n");
					scanf("%d", &horaFinal);

					if (horaInicial < 0 || horaFinal > 24)
					{
						printf("Numeros Incorrecto \n");
						printf("----------------------------------------------------------------\n");
					}
					else if (horaInicial == horaFinal)
					{
						printf("Fallo! No pueden ser iguales\n");
						printf("----------------------------------------------------------------\n");
					}
					else if (horaInicial > horaFinal)
					{
						printf("La hora inicial es mayor a la final \n");
						printf("----------------------------------------------------------------\n");
					}
					else
					{
						printf("Horario establecido correctamente\n");
						horarioEstablecido = true;
					}
				} while (horarioEstablecido == false);
			}
			else
			{
				printf("El horario ya esta establecido \n");
			}

			//-  validando que el horario sea correcto para funcionar durante un día. Se debe verificar que
			// solamente una vez se establezca el horario. Además, las demás operaciones podrán realizarse solo si ya se estableció este horario.
			break;
		case 2: // Modificar horario de terminación de funcionamiento
			if (verificarHorario(horarioEstablecido))
			{
				printf("--------------Modificar horario de terminación-----------\n");

				do
				{
					printf("Ingrese la nueva hora de funcionamiento final (Solo numero) : \n");
					scanf("%d", &tmpHoraFinal);

					if (tmpHoraFinal > 24)
					{
						printf("Numeros Incorrecto \n");
						printf("----------------------------------------------------------------\n");
					}
					else if (horaInicial == tmpHoraFinal)
					{
						printf("Fallo! No pueden ser iguales la hora inicial y la final \n");
						printf("----------------------------------------------------------------\n");
					}
					else if (horaInicial > tmpHoraFinal)
					{
						printf("La hora inicial es mayor a la final \n");
						printf("----------------------------------------------------------------\n");
					}
					else
					{
						printf("Horario Final cambiado   correctamente\n");
						horaFinal = tmpHoraFinal;
					}
				} while (horaFinal != tmpHoraFinal);

			} //-  validando que ya hay un horario de funcionamiento establecido previamente.
			// Esta validación debe realizarse para cualquier otra operación (excepto la de establecer horario).
			break;
		case 3: // Establecer las líneas que estarán en funcionamiento durante el día actual

			if (verificarHorario(horarioEstablecido))
			{
				printf("--------------Establecer las líneas que estarán en funcionamiento-----------\n");
				printf("Configuracion de las lineas\n");
				printf("------------------------------------------------------------\n");

				for (i = 0; i < 12; i++)
				{
					do
					{
						printf("linea %d :", i + 1);
						printf("Selecciona el modo\n");
						printf("1 - Disponible , 2 - Fuera de servicio\n");
						scanf("%d", &linea[i]);
						if (linea[i] > 2)
						{
							printf("Dato incorrecto, vuelva a intentar\n");
						}

					} while (linea[i] > 2);

					printf("------------------------------------------------------------\n");
				}

				printf("Modo de filas establecido correctamente \n");
				for (j = 0; j < 12; j++)
				{
					if (linea[j] == 1)
					{
						printf("Linea %d:", (j + 1));
						printf("esta en modo disponible\n");
					}
					else
					{
						printf("Linea %d:", (j + 1));
						printf("esta en modo Fuera de servicio\n");
					}
				}
			}

			// 	 (el número total de líneas es de 12 pero las que estén en
			// funcionamiento puede variar debido a algún mantenimiento requerido por alguna línea). Las opciones para una línea pueden ser:
			// disponible, en uso o fuera de servicio.
			break;
		case 4: // Establecer uso de una línea

			if (verificarHorario(horarioEstablecido))
			{
				printf("-----------Establecer uso de linea-------------\n");
				for (i = 0; i < 12; i++)
				{
					if (linea[i] == 1)
					{
						personas[0][contador].disponibles = i; // Vemos las que estan disponibles y no fuera de servicio
						contador++;
					}
				}
				printf("Filas disponibles para ser utilizadas");
				for (i = 0; i < contador; i++)
				{
					printf("\nLinea:%d", personas[0][i].disponibles + 1); // 0 filas
				}

				printf("\nSeleccione la fila disponible que deesee\n");
				scanf("%d", &opciones); // Vemos en que fila nos posicionamos

				int aux = 0;
				for (i = 0; i < contador; i++)
				{
					if (personas[0][i].disponibles + 1 == opciones)
					{
						aux = i;
						// Vemos en que fila nos posicionamos
					}
				}

				printf("Ingrese el nombre del lider \n");
				scanf("%s", &personas[1][aux].varNombres);
				printf("Ingrese el numero de jugadores \n");
				scanf("%d", &personas[2][aux].group);

				printf("Ingrese el horario de ocupacion \n");
				printf("Nota : Solo puedes utilizarlo 1 o 2hrs \n");

				printf("Ingrese cuando iniciara \n");
				scanf("%d", horarioOcupadoInicio);
				printf("%d\n", horarioOcupadoInicio);
				printf("Ingrese cuando terminara \n");
				scanf("%d", horarioOcupadoFinal);

				tiempoUsar = horarioOcupadoFinal - horarioOcupadoInicio;

				if (horarioOcupadoInicio == horarioOcupadoFinal)
				{
					printf("Fallo! No pueden ser iguales\n");
					printf("----------------------------------------------------------------\n");
				}
				else if (horarioOcupadoInicio > horarioOcupadoFinal)
				{
					printf("La hora inicial es mayor a la final \n");
					printf("----------------------------------------------------------------\n");
				}
				else if (horarioOcupadoInicio < horaInicial || horarioOcupadoFinal > horaFinal)
				{
					printf("Este horario no se puede, esta fuera del horario de funcionamiento\n");
				}
				else if (tiempoUsar > 2)
				{
					printf("Este horario no se puede, ya que abarca mas de dos horas\n");
				}
				else
				{
					printf("Perfecto \n");
					printf("Usted ya puede ir a jugar\n");
					linea[opciones - 1] == 3; // Se pone en uso la linea
				}
			}
			// 	- . Para esta operación, se debe capturar la información de un jugador de la línea, el número de
			// jugadores que la usarán y el horario que la estarán usando (el cual puede ser de 1 o 2 hrs y debe validarse que el horario se
			// encuentre dentro de los horarios de funcionamiento).
			break;
		case 5: // Liberar una línea.
			if (verificarHorario(horarioEstablecido))
			{
				printf("---------------Lineas para liberarse----------------------\n");
				for (i = 0; i < 12; i++)
				{
					if (linea[i] == 3)
					{
						printf("La linea:%d \n", i + 1);
					}
				}

				printf("¿Que linea desea liberar?\n");
				printf("%d", &lineaLiberar);
				linea[lineaLiberar] = 1;
				printf("Cambio exitoso\n");
			}
			// 	- Liberar una línea. Con esta opción se permitirá que una línea vuelva a usarse por otros jugadores, validando que la línea estaba en
			// uso antes de liberarse.
			break;
		case 6: // Mostrar información de las líneas.
			if (verificarHorario(horarioEstablecido))
			{
				printf("-------------Informacion sobre las filas-----\n");

				for (j = 0; j < 12; j++)
				{
					if (linea[j] == 1)
					{
						printf("Linea %d:", (j + 1));
						printf("esta en modo disponible\n");
					}
					else if (linea[j] == 2)
					{
						printf("Linea %d:", (j + 1));
						printf("Esta en modo Fuera de servicio\n");
					}
					else if (linea[j] == 3)
					{
						printf("Linea %d:", (j + 1));
						printf("Esta en modo : Uso \n");
						void bucarEnUso(int contador, int j);
					}
				}
			}

			// -  Esta opción mostrará información de todas las líneas, mostrando si está disponible, en uso o
			// mantenimiento. En caso de estar en uso, debe mostrar el nombre de quién la usa y la cantidad de jugadores que hay en ella.
			break;
		case 7: // Mostrar información de una línea
			if (verificarHorario(horarioEstablecido))
			{
				printf("-------------Informacion sobre una filas-----\n");
				printf("Que linea deseea buscar\n");
				printf("%d", &lineaBuscar);

				if (linea[lineaBuscar - 1] == 1)
				{
					printf("Linea %d:", (lineaBuscar));
					printf("esta en modo disponible\n");
				}
				else if (linea[lineaBuscar - 1] == 2)
				{
					printf("Linea %d:", (lineaBuscar));
					printf("Esta en modo Fuera de servicio\n");
				}
				else if (linea[lineaBuscar - 1] == 3)
				{
					printf("Linea %d:", (lineaBuscar));
					printf("Esta en modo : Uso \n");

					void bucarEnUso(int contador, int lineaBuscar);
				}
			}

			// - . Esta opción mostrará información de la línea que seleccione el usuario, mostrando el estado de la
			// línea (disponible, en uso o mantenimiento), nombre de cliente y cantidad de jugadores, si es el caso.
			break;

		default: // Por si no hay esa opcion

			printf("Dato incorrecto , seleecione otro nuevamente\n");
			break;
		}
	} while (menu != 8);

	printf("Hasta Luego ");

	return 0;
}

//--------------------------Verificar si ya estaba el horario----------------
bool verificarHorario(bool horarioEstablecido)
{
	if (!horarioEstablecido)
	{
		printf("Establezca un horario primero \n");
		return false;
	}

	return true;
}

//----------------------------------------------------------------------------
void bucarEnUso(int contador, int lineaBuscar)
{

	for (i = 0; i < contador; i++)
	{
		if (personas[0][i].disponibles == lineaBuscar)
		{

			printf("Por nombre %s\n", personas[1][i].varNombres);
			printf("jugadores %d\n", personas[2][i].group);
			printf("------------------------\n");
		}
	}
}
/*

boliche con respecto a administrar el uso de la líneas que tiene en funcionamiento durante
el horario de atención establecido. Además, en el programa debe administrarse y verificarse el uso de las líneas
cuidando el horario de uso de las mismas.
*/
