/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package intediez;
import javax.swing.*;  // Eata biblioteca sirve para hacer el parseo
import java.util.*;   //Sirve para la utileria

/**
 *
 * @author PC-38
 */
public class InteDiez {  //nuestra clase mayor
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args){ //la estructura define todo
        int vector[]= new int [10]; //creamos el objeto
        numerod(vector);  // mandamos a llamar a la subclases
        mnumero(vector);  // mandamos a llamar a la subclases
               
    }
    public static void numerod(int[]vector){  //creamos nuestra subrutinas con el arreglos como parametro
        String dato; //El dato va a ser caracteres
        int numero;  // nuestro numero va ha ser entero
        for(int i=0;i<vector.length;i++){ //nuestro ciclo
            dato=JOptionPane.showInputDialog("Introduce numeros"); //el formulario hacia la pantalla
            numero= Integer.parseInt(dato);   //parseo de dato a numero
            vector[i]=numero;       // Guardar el numero en el vector 
        }}
    public static void mnumero(int [] vector){ // nuestro otra subclase con el arreglos
        for(int i=0;i<vector.length;i++){ // nuestro ciclo
            System.out.println(""+vector[i]);  //Mostrar numeros guardados
            JOptionPane.showMessageDialog(null, " Los numeros guardados: " + vector[i]);//Formulario mostrando 
            // los numeros guardados
    }    
    }
        // TODO code application logic here
    }
    

