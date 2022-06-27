/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package horasminutos;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class HorasMinutos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    int n1, result ;
    Scanner teclado =new Scanner (System.in);
    System.out.println("Horas");
    n1=teclado.nextInt();
    result=n1*60;
    System.out.println("MINUTOS :" + result);
        // TODO code application logic here
    }
    
}
