/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package promedio;
import java.util.Scanner;

/**
 *
 * @author PC-38
 */
public class Promedio {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    int x = 1;
    double r, l ,o,m,n,b ;
    Scanner teclado = new Scanner ( System.in);
            do {
            System.out.println("Introduce calificacion");
            l=teclado.nextDouble();
            m=teclado.nextDouble();
            n=teclado.nextDouble();
            b=teclado.nextDouble();
            r=l+m+n+b;
            
            x = x+1;
        }
        while(x<=4);
            o=r/4;
            System.out.println("Promedio"+ o);
        // TODO code application logic here
    }
    
}
