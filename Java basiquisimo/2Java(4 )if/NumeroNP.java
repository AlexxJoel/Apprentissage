/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package numeronp;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class NumeroNP {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int a;
        Scanner teclado= new Scanner(System.in);
        System.out.printf("Introduce numero :");
        a=teclado.nextInt();
        if(a>0){
            System.out.printf("Positivo");
        }
        else{
            System.out.printf("Negativo");
        }
        
        // TODO code application logic here
    }
    
}
