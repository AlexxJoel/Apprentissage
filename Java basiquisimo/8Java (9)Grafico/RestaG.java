/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restag;

import javax.swing.JOptionPane;
import java.util.*;

public class RestaG {
int num1 , num2, total ; 
    RestaG(int x , int y ){
       num1=x;
       num2=y;
    }
    public void resta(){
        total= num1- num2;
        System.out.println("La resta de: " + num1 + " - " + num2 + " = "+ total);
        JOptionPane.showMessageDialog(null, "El resultado de la resta es "+ total);
        
    }
    public static void main(String[] args) {
        int a =Integer.parseInt( JOptionPane.showInputDialog(null, "Primer numero "));
        int b= Integer.parseInt(JOptionPane.showInputDialog(null, "Segundo Numero"));
        RestaG s = new RestaG(a,b);
        s.resta();
}
}