
package testmatriz;
import java.util.*;
/**
 *
 * @author J0EL
 */
public class Testmatriz {

    public static void main(String[] args) {
      int matriz [][ ]= new int[3][3];
      Scanner entrada= new Scanner (System.in);
      float sumaFila = 0 ;
      for( int i =0 ;i< matriz.length;i++){
          for ( int j = 0 ; j< matriz.length;j++){
              System.out.println("Ingrese el numero en la fila :"+ (i)+  " Columna :"+j+":");
              matriz[i][j]= entrada.nextInt();
          }
      }
              for(int i=0;i<matriz.length;i++){
                  sumaFila = 0;
                  for(int j = 0 ; j<matriz[i].length;j++){
                      sumaFila+= matriz [i][j];
                      System.out.println(String.format("%d",matriz [i][j]));
                  }
                  System.out.println(String.format("suma fila: %f ,promedio fila: ",sumaFila,sumaFila/matriz.length));
              }
          }
          
      }
    

