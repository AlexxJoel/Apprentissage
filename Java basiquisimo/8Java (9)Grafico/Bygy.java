package bygy;
import javax.swing.JOptionPane;
import java.util.*;
public class Bygy {
    double Byte , r ;
    Bygy(double h){
        Byte = h;        
    }
    public void by(){
        r = Byte*9.31;
       JOptionPane.showMessageDialog(null," Tus Gygabytes son: "+ r+"×10^-10");             
    }
    public static void main(String[] args) {
       double a;
        a = Integer.parseInt(JOptionPane.showInputDialog( "Introduce tus Bytes"));
       Bygy q = new Bygy (a);
       q.by();
    }
    
}
