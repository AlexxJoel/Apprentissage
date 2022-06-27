
package hola;


import javax.swing.*;  
import java.util.*; 



public class Hola {

    public static void main(String[] args) {
         int vector[]= new int [3]; 
        numerod(vector);  
                 

       
    }
      public static void numerod(int[]vector){ 
        int numero,r; 
        for(int i=0;i<vector.length;i++){ 
            numero= Integer.parseInt(JOptionPane.showInputDialog("Introduce numeros")); 
             vector[i]=numero;   
            System.out.printf("-"+vector[i]); 
          
        }
             r= vector[0]* vector[1]* vector[2];
                System.out.println();
             System.out.println(""+ r); 
             JOptionPane.showMessageDialog(null,"Resultado: "+r);
        }}
      
    
