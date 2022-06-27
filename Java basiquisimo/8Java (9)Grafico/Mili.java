
package mili;
import javax.swing.JOptionPane;
import java.util.*;


public class Mili {
    double mililitros , r ;
    Mili(double h){
        mililitros=h;    }
    public void hola (){
        r= mililitros/1000;
        JOptionPane.showMessageDialog(null,"Tus Litros son : "+ r);
        
    }

  
    public static void main(String[] args) {
        double a = Double.parseDouble(JOptionPane.showInputDialog("Introduce tus Mililitros:"));
        Mili q = new Mili (a);
        q.hola();
       
    }
    
}
