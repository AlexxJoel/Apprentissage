/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sumanum;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class SumaNum {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        double num1, num2 , result ;
        Scanner teclado = new Scanner (System.in) ;
        System.out.print("numero 1 "); 
        num1= teclado.nextDouble();
        System.out.print("numero 2 "); 
        num2= teclado.nextDouble();
        result=num1+num2;
        System.out.println("SUMA :"  +result);
    }
    
}
