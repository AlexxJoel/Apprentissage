/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package areacuadrado;
import javax.swing.JOptionPane;//librerias y paquetes 
import java.util.*;//librerias y paquetes 
import java.util.Scanner;//librerias y paquetes

public class Areacuadrado {
double lado,resultado;//define variables tipo entero
Areacuadrado(double x){//constructor entrada y salida
    lado=x;//define la variable a utilizar
    
}
    public void area()//clase principal
{
    resultado=lado*lado;//hace la operacion
    System.out.println("la area de es " +resultado);//letreo que se mostrara en pantalla
    JOptionPane.showMessageDialog(null,"el area es:  "+resultado);//letrero estetico que se muestra como uan venrana en pantalla
}
    public static void main(String[] args) {
         double a=Integer.parseInt(JOptionPane.showInputDialog(null,"insertar el valor del lado"));//letrero estetico que se muestra como uan venrana en pantalla
       
  Areacuadrado s=new Areacuadrado (a);//creamos objetos con sus variables
    s.area();//manda los valores ala subclase suma
    }//fin cuerpo principal
    // TODO code application logic here
    }
