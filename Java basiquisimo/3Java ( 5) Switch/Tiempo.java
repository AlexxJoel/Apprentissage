
package tiempo;
import java.util.Scanner;

/**
 *
 * @author EQUIPO24
 */
public class Tiempo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int op;
        double  a  , result ;
        Scanner teclado=new Scanner (System.in);
        System.out.println("escoge una opcion "
                + "1/min-seg, 2/hrs-min, 3/min-hrs : ");
        op=teclado.nextInt();
        
        switch (op){
            case 1:  
            System.out.println("Introduce minutos ");
          a= teclado.nextDouble();
          result= a *60 ;
          System.out.println("Segundos" + result);
          
           break;
            case 2 : 
        System.out.println("Introduce horas ");
          a= teclado.nextInt();
          result = a*60;
          System.out.println("minutos ;" + result);
            
                break;
            case 3 : 
            System.out.println("Introduce minutos ");
          a= teclado.nextDouble();
          result = a/60;
          System.out.println("horas : "+ result);
  
            
            
                break;
            default : System.out.printf("Error");
        // TODO code application logic here
    }
    
}
