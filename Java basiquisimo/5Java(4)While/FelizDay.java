
package felizday;
import java.util.*;
import java.util.Scanner;
/**
 *
 * @author PC-38
 */
public class FelizDay {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int x ;
        Scanner teclado= new Scanner(System.in);
        System.out.println("Introduce veces deseada");
        x=teclado.nextInt();
         while ( x>=1){
            System.out.println("Feliz dia");
            x=x-1;
            
        }
        
        // TODO code application logic here
    }
    
}
