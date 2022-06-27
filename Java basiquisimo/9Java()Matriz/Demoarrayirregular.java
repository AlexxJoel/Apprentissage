
package demoarrayirregular;

/**
 *
 * @author J0EL
 */
public class Demoarrayirregular {

 
    public static void main(String[] args) {
       int cursos [][]= new int [7][];
       cursos[0]=new int[10];
       cursos[1]=new int[10];
       cursos[2]=new int[10];
       cursos[3]=new int[10]; 
       cursos[4]=new int[10];
       cursos[5]=new int[2];
       cursos[6]=new int[2];
       int i,j;
       for( i=0; i < 5;i++)
           for( j=0 ; j<10; j++)
               cursos [i][j]=j+1;
       for (i=5; i<7; i++)
           for(j=0;j<2;j++)
               System.out.println("Entre semana");
               System.out.println("-------------");
       for(i=0;i<5;i++){    
       System.out.println("Dia"+(i+1)+"°:");
      for(j=0;j<10;j++)
          System.out.println(cursos[i][j]+"");
          System.out.println();
       
    }
      System.out.println("\nFin de semana");
      System.out.println("--------------");
      for(i=5;i<7;i++){
       System.out.println("Dia"+(i+1)+"°:");   
       for(j=0;j<2;j++)
         System.out.println(cursos[i][j]+"");
       System.out.println();
      }
    }  
       }
