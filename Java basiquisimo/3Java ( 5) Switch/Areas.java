/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package areas;
import java.util.Scanner;

/**
 *
 * @author J0EL
 */
public class Areas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int area;
        double  a , b , result ;
        Scanner teclado=new Scanner (System.in);
        System.out.println("escoge una opcion "
                + "1/cuadrado, 2/triangulo, 3/circulo, 4/rectangulo : ");
        area=teclado.nextInt();
        
        switch (area){
            case 1:  
            System.out.println("Introduce lado ");
          a= teclado.nextDouble();
          result= a *a ;
          System.out.println("Area" + result);
          
           break;
            case 2 : 
        System.out.println("Introduce base y altura ");
          a= teclado.nextInt();
          b = teclado.nextInt();
          result = a*b/2;
          System.out.println("Area ;" + result);
            
                break;
            case 3 : 
            System.out.println("Introduce radio ");
          a= teclado.nextDouble();
          result = 3.1416*a*a;
          System.out.println("Area : "+ result);
  
            
            
                break;
            case 4 : 
                System.out.println("Introduce base y altura ");
          a= teclado.nextInt();
          b = teclado.nextInt();
          result = a*b;
          System.out.println("Area: "+ result);
         
            
            
                break;
            default : System.out.printf("Error");
                
        // TODO code application logic here
    }
    
}
