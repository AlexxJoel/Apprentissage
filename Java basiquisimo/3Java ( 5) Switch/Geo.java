/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package geo;
import java.util.Scanner;
/**
 *
 * @author PC-27
 */
public class Geo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int ge , a , b , result ;
        Scanner teclado=new Scanner (System.in);
        System.out.println("escoge una opcion "
                + "1/suma, 2/resta, 3/multiplicacion, 4/division : ");
         ge=teclado.nextInt();
        
        System.out.println("Introduce dos numeros enteros ");
          a= teclado.nextInt();
          b = teclado.nextInt();
        switch (ge){
            case 1:  
            result=a+b;
             System.out.println("SUMA :"  +result);
                break;
            case 2 : 
            result=a-b;
            System.out.println("resta"+result);
            
                break;
            case 3 : 
                result=a*b;
                System.out.printf("Multiplicacion"+result);
            
            
                break;
            case 4 : 
                result=a/b;
                System.out.printf("division"+result);
            
            
                break;
            default : System.out.printf("Error");
                
                
        }
        // TODO code application logic here
    }
    
}
