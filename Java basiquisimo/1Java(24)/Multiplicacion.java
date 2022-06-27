/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package multiplicacion;
import java.util.Scanner;

/**
 *
 * @author J0EL
 */
public class Multiplicacion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    double n1 , n2 , result ;
    Scanner teclado = new Scanner (System.in);
    System.out.print("numero 1 ");
    n1= teclado.nextDouble();
    System.out.print("numero 2 "); 
    n2= teclado.nextDouble();
    result=n1*n2;
    System.out.println("MULTIPLICACION : "+ result);
        // TODO code application logic here
    }
    
}
