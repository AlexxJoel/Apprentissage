package face;
import javax.swing.JOptionPane;
import java.util.*;
public class Face {
    double fa , r ;
    Face(double h){
        fa = h;        
    }
    public void cen(){
        r = (fa-32)*5/9;
       JOptionPane.showMessageDialog(null," Tus Centigrados son: "+ r+"°C");             
    }
    public static void main(String[] args) {
       double a = Double.parseDouble(JOptionPane.showInputDialog( "Introduce tus Farentheit"));
        
        
        
       Face q = new Face (a);
       q.cen();
    }
    
}
