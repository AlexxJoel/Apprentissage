/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package definemayore;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class DefineMayorE {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int a,b;
         Scanner teclado = new Scanner (System.in);
         System.out.printf("Introduce 2 numeros enteros");
         a=teclado.nextInt();
         b=teclado.nextInt();
         if(a>b){
           System.out.printf("es mayor :"+a );
         }
         else{
             System.out.printf("mayor :"+b);
         }
        // TODO code application logic here
    }
    
}
