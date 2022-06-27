/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package areatriangulo;
import javax.swing.JOptionPane;//librerias y paquetes 
import java.util.*;//librerias y paquetes 
import java.util.Scanner;//librerias y paquetes
/**
 *
 * @author PC-27
 */
public class Areatriangulo {
double base,altura,resultado;//define variables tipo entero
Areatriangulo(double x, double y){//constructor entrada y salida
    base=x;//define la variable a utilizar
    altura=y;//define la variable a utilizar
}
    public void area()//clase principal
{
    resultado=(base*altura)/2;//hace la operacion
    System.out.println("la area de es " +resultado);//letreo que se mostrara en pantalla
    JOptionPane.showMessageDialog(null,"el area es:  "+resultado);//letrero estetico que se muestra como uan venrana en pantalla
}
    public static void main(String[] args) {
       double a=Integer.parseInt(JOptionPane.showInputDialog(null,"insertar el valor de la base"));//letrero estetico que se muestra como uan venrana en pantalla
       double b=Integer.parseInt(JOptionPane.showInputDialog(null,"insertar el valor de la altura"));//letrero estetico que se muestra como uan venrana en pantalla
   Areatriangulo s=new Areatriangulo (a,b);//creamos objetos con sus variables
    s.area();//manda los valores ala subclase suma
    }//fin cuerpo principal
    // TODO code application logic here
    }
    










