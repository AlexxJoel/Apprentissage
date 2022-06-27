package multigraf;
import javax.swing.*;  // Eata biblioteca sirve para hacer el parseo
import java.util.*;   //Sirve para la utileria
public class Multigraf{
        int num1 , num2, total ;  //VARIABLES ENTERO
        Multigraf (int x , int y ){    // constructor entrada y salida
        num1=x; //define las variables que se utilizaran en los parametros
        num2=y;
    }
    public void multi(){  //subclase 
        total= num1* num2;  // hace la suma y el resul
        System.out.println("La multiplicacion de: " + num1 + " * " + num2 + " = "+ total);//letrro
        JOptionPane.showMessageDialog(null, "El resultado de la suma es "+ total); //crema
        
    }
    public static void main(String[] args) { // cuerpo principal
        int a =Integer.parseInt( JOptionPane.showInputDialog(null, "Primer numero "));//pedir numero
        int b= Integer.parseInt(JOptionPane.showInputDialog(null, "Segundo Numero"));//pedir numero
        Multigraf s = new Multigraf(a,b); //creamos objeto con sus variables
        s.multi();// para mandarle los valores a la subclase sumar
    }
    
}
