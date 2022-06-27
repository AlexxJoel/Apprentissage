package vcetograf;
import javax.swing.*;  // Eata biblioteca sirve para hacer el parseo
import java.util.*;   //Sirve para la utileria
public class Vcetograf {
 public static void main(String[] args){ //la estructura define todo
        int vector[]= new int [4]; //creamos el objeto
        cuatro(vector);  // mandamos a llamar a la subclases
        mcuatro(vector);  // mandamos a llamar a la subclases
             
    }
    public static void cuatro(int[]vector){  //creamos nuestra subrutinas con el arreglos como parametro
        String dato; //El dato va a ser caracteres
        int numero;  // nuestro numero va ha ser entero
        for(int i=0;i<vector.length;i++){ //nuestro ciclo
            dato=JOptionPane.showInputDialog("Introduce numeros"); //el formulario hacia la pantalla
            numero= Integer.parseInt(dato);   //parseo de dato a numero
            vector[i]=numero;       // Guardar el numero en el vector 
        }}
    public static void mcuatro(int [] vector){ // nuestro otra subclase con el arreglos
        for(int i=0;i<vector.length;i++){ // nuestro ciclo
            System.out.println(""+vector[i]);  //Mostrar numeros guardados
            JOptionPane.showMessageDialog(null, " Los numeros guardados: " + vector[i]);//Formulario mostrando 
            // los numeros guardados
    }    
    }
    }