package cenme;
import javax.swing.JOptionPane;
import java.util.*;
public class Cenme {
    int centimetros , r ;
    Cenme(int h){
        centimetros = h;        
    }
    public void cen(){
        r = centimetros/100;
       JOptionPane.showMessageDialog(null," Tus metros son: "+ r);             
    }
    public static void main(String[] args) {
       int a = Integer.parseInt(JOptionPane.showInputDialog( "Introduce tus centimetros"));
       Cenme q = new Cenme (a);
       q.cen();
    }
    
}
