/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package suma;
import javax.swing.JOptionPane;
import java.util.*;
/**
 *
 * @author PC-38
 */
public class Suma {
    int num1 , num2, total ; 
    Suma(int x , int y ){
       num1=x;
       num2=y;
    }
    public void sumar(){
        total= num1+ num2;
        System.out.println("La suma de: " + num1 + " + " + num2 + " = "+ total);
        JOptionPane.showMessageDialog(null, "El resultado de la suma es "+ total);
        
    }
    public static void main(String[] args) {
        int a =Integer.parseInt( JOptionPane.showInputDialog(null, "Primer numero "));
        int b= Integer.parseInt(JOptionPane.showInputDialog(null, "Segundo Numero"));
        Suma s = new Suma(a,b);
        s.sumar();
        
        
        // TODO code application logic here
    }
    
}
