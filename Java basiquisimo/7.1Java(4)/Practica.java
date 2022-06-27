                                                                                                                                                                                                                                      /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica;
import javax.swing.*;
import java.util.*;


/**
 *
 * @author PC-38
 */
public class Practica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int vector[]= new int [5];
        llenarvector(vector);
        mvector(vector);
                // TODO code application logic here
    }
    public static void llenarvector(int[]vector){
        String dato;
        int numero;
        for(int i=0;i<vector.length;i++){
            dato=JOptionPane.showInputDialog("Introduce numeros");
            numero= Integer.parseInt(dato);
            vector[i]=numero;       
        }}
    public static void mvector(int [] vector){
        for(int i=0;i<vector.length;i++){
            System.out.println(""+vector[i]);
    }    
    }
    
}
