/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package perimetrocuadrado;
import java.util.Scanner;
/**
 *
 * @author PC-24
 */
public class PerimetroCuadrado {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        double n1, result;
       Scanner Teclado=new Scanner(System.in);
       System.out.printf("intrtoduce lado");
       n1= Teclado.nextDouble();
       result=n1+n1+n1+n1;
       System.out.print("resultado :" + result);
       
    }
    
}
