/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package grados_f_c;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class Grados_F_C {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     float n1 , result ;
     Scanner teclado = new Scanner (System.in);
     System.out.print("Farenthein");
     n1= teclado.nextFloat();
     result=(n1-32)*5/9;
     System.out.println("CONVERCION °F A °C : "+ result);
        // TODO code application logic here
    }
    
}
