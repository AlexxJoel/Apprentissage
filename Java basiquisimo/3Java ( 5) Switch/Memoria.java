
package memoria;
import java.util.Scanner;
/**
 *
 * @author EQUIPO24
 */
public class Memoria {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int op;
        double  a , b , result ;
        Scanner teclado=new Scanner (System.in);
        System.out.println("escoge una opcion "
                + "1/gigas a tera, 2/bytes a gigas: ");
        op=teclado.nextInt();
        
        switch (op){
            case 1:  
            System.out.println("Introduce gigas ");
          a= teclado.nextDouble();
          result= a/1000;
          System.out.println("terabytes" + result);
          
           break;
            case 2 : 
        System.out.println("Introduce bytes a ");
          a= teclado.nextInt();
          result = a/1e+9 ;
          System.out.println("gigas :" + result);
            
            
            
                break;
            default : System.out.printf("Error");
        // TODO code application logic here
    }
    
}
