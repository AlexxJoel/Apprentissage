/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package division;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class Division {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    float n1 , n2 , result ;
    Scanner teclado = new Scanner (System.in);
    System.out.print("numero 1 ");
    n1= teclado.nextFloat();
    System.out.print("numero 2 "); 
    n2= teclado.nextFloat();
    result=n1/n2 ;
    System.out.println("Division : "+ result);   
        // TODO code application logic here
    }
    
}
