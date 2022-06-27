/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minsseg;
import java.util.Scanner;
/**
 *
 * @author PC-24
 */
public class MinsSeg {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) { 
       double n1,n2 , result;
       Scanner Teclado=new Scanner(System.in);
       System.out.printf("intrtoduce horas");
       n1= Teclado.nextDouble();
       result=n1*60;
       System.out.print("resultado :" + result);
        // TODO code application logic here
    }
    
}
