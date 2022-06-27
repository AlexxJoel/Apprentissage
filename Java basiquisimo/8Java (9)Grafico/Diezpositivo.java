package diezpositivo;
import javax.swing.JOptionPane;
import java.util.*;
import java.util.Scanner;

public class Diezpositivo {
    
    public static void main(String[] args) {
        int []vector = new int[10];//crea un objeto llamado arreglo vector unidimencinal en la RAM
        llenar_vector(vector); //manda a llamar al subprograma metodo llenar_vector pasa un parametro con valor o referencia
        mvector(vector);//manda llamar el metodo mvectory pasa parametro con o referencia
        }
    public static void llenar_vector  (int []vector){//crea el metodo llenar_vector con parametro vector
       String dato; //define la variable dato de tipo string o cadena de caracteres
       int numero;//define la variable numero de tipo entero
       for(int i=0; i<vector.length; i++){//indica el inicio de un ciclo al tamaÃƒ ±o del arreglo unidimencional
           dato=JOptionPane.showInputDialog("ingrese numero");//envia mensaje a cada pantalla y la guarda en la variable dato
           numero=Integer.parseInt(dato);//parseo o fuerza al tipo string de dato rn tipo entero
           if (numero >0) {//es una decicion
               JOptionPane.showMessageDialog(null,"Numero  ´positivo" + numero );//envia mensaje a cada pantalla y la guarda en la variable dato
               vector[i]=numero; //si cumple la condicion se guardara
           }
           else{
               JOptionPane.showMessageDialog(null,"Numero  ´negativo" + numero ); //envia mensaje a cada pantalla y la guarda en la variable dato  }
    }}
    }
    
    public static void mvector(int[]vector){//crea el metodo mvector con parametro mvector
        for(int i=0; i<vector.length; i++){//inicia el un ciclo desde i hasta tamaÃƒ ±o vector
        System.out.println(""+vector[i]);//envia mensaje a pantalla simple del contenido del valor en las pociciones de i
    }//fin ciclo
    }//fin clase
}
