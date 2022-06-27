/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package distancia;
import java.util.Scanner ;
/**
 *
 * @author EQUIPO24
 */
public class Distancia {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int di;
        double  a , b , result ;
        Scanner teclado=new Scanner (System.in);
        System.out.println("escoge una opcion "
                + "1/km-m, 2/mt-km, 3/cm-mtrs: ");
        di=teclado.nextInt();
        
        switch (di){
            case 1:  
            System.out.println("Introduce km ");
          a= teclado.nextDouble();
          result= a *1000 ;
          System.out.println("mt" + result);
          
           break;
            case 2 : 
        System.out.println("Introduce mtrs ");
          a= teclado.nextInt();
          result = a/1000;
          System.out.println("km ;" + result);
            
                break;
            case 3 : 
            System.out.println("Introduce cm ");
          a= teclado.nextDouble();
          result = a/1000;
          System.out.println("mtrs : "+ result);
 
         
            
            
                break;
            default : System.out.printf("Error");
        // TODO code application logic here
    }
    
}
