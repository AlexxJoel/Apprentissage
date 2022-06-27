/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package grados_c_f;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class Grados_c_f {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      Float n1 , result ;
      Scanner teclado = new Scanner (System.in);
      System.out.print("Centigrados");
      n1= teclado.nextFloat();
      result=(n1*9/5)+32;
      System.out.println("CONVERCION °C A °F : "+ result);
        // TODO code application logic here
    }
    
}
