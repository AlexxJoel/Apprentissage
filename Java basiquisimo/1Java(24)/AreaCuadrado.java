/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package areacuadrado;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class AreaCuadrado {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      double n1 , n2 , result ;
      Scanner teclado = new Scanner (System.in);
      System.out.print("lado");
      n1= teclado.nextDouble();
      result=n1*n1;
      System.out.println("AREA DE CUADRADO : "+ result);
        // TODO code application logic here
    }
    
}
