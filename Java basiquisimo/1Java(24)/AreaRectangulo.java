/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arearectangulo;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class AreaRectangulo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      double n1 , n2 , result ;
      Scanner teclado = new Scanner (System.in);
      System.out.print("Base");
      n1= teclado.nextDouble();
      System.out.print("Altura "); 
      n2= teclado.nextDouble();
      result=n1*n2;
      System.out.println("AREA DE RECTANGULO : "+ result);
        // TODO code application logic here
    }
    
}
