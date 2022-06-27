
package nueve;

import javax.swing.*;  
import java.util.*; 
public class Nueve {

    public static void main(String[] args) {
         int vector[]= new int [9]; 
        numerod(vector);  
                 

       
    }
      public static void numerod(int[]vector){ 
        int numero,r; 
        for(int i=0;i<vector.length;i++){ 
            
            numero= Integer.parseInt(JOptionPane.showInputDialog("Introduce numeros")); 
             vector[i]=numero;   
            System.out.printf(""+vector[i]); 
             System.out.printf(","); 
        
        }
             r= vector[0]+ vector[1]+ vector[2]+vector[3]+vector[4]+vector[5]+vector[6]+vector[7]+vector[8];
                System.out.println();
             System.out.println(""+ r); 
             JOptionPane.showMessageDialog(null,"Resultado: "+r);
        }}
      
    