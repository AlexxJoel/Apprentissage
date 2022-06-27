/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package promedio3;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class Promedio3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      float n1 , n2 , n3 , result ;
      Scanner teclado = new Scanner (System.in);
      System.out.print("Introduce tus 3 calificaciones: ");
      n1= teclado.nextFloat();
      n2= teclado.nextFloat();
      n3= teclado.nextFloat();
      result=(n1+n2+n3)/3;
      System.out.println("PROMEDIO : "+ result);
        // TODO code application logic here
    }
    
}
