/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package positivi.nega;
import java.util.*;
import java.util.Scanner;
/**
 *
 * @author PC-38
 */
public class POsitiviNega {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int x , i=1;
        Scanner teclado =new Scanner (System.in);
         while ( i<=5){
            System.out.println("Introduce numero");
            x = teclado.nextInt();
            if(x>0){
                System.out.println("Positivo");
            }
            else
            {
                System.out.println("Negativo");
            }
            i=i+1;
            
        }
        
        // TODO code application logic here
    }
    
}
