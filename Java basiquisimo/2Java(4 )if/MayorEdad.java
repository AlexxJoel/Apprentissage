/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mayoredad;
import java.util.Scanner;
/**
 *
 * @author J0EL
 */
public class MayorEdad {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int a;
        Scanner teclado = new Scanner(System.in);
        System.out.printf("introduce la edad :");
        a=teclado.nextInt();
        if(a>=18){
            System.out.printf("Es mayor de edad");
        }
        else{
            System.out.printf("Es menor de edad");
        }
        // TODO code application logic here
    }
    
}
