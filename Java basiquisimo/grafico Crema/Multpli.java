package multpli;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
public abstract class Multpli implements ActionListener{
JButton bt1 ; //Creando variables globales del boton
JLabel jl1,jl2,jl3; //Creando variables globales dela etiquetas
JTextField jt1,jt2,jt3; //Creando variables globales de campos de texto
JFrame jf = new JFrame("Formulario Basico de Kava");//Creando de la ventana con titilo

public Multpli (){ //constructor de la clase
    jf.setLayout(null);//configurar como se dispondra  elo espacio de fame
    Dimension d = new Dimension (); // objeto para obtemer el ancho de la pantalla 
    //instaancia de etiquetas
 jl1 = new JLabel("Numero 1");
 jl2 = new JLabel ("Numero 2 ");
 jl3= new JLabel ("Resultado");
 //instancias de cuadro de texto
 jt1 = new JTextField(2);
 jt2 = new JTextField(2);
 jt3 = new JTextField(2);
 
 //instancia boton con texto
 bt1 = new JButton ("*");
 
 //ubicando nuestro objetos
 jl1.setBounds(30,40,60,25 ); jt1.setBounds(100,40,40,25);
 bt1.setBounds(185,40,25,25);
 jl2.setBounds(235,40,60,25 ); jt2.setBounds(295,40,40,25);
 jl3.setBounds(30,85,60,25 ); jt3.setBounds(100,85,40,25);
 //cambiando horentacion de texto
 jt1.setHorizontalAlignment(JTextField.RIGHT); jt2.setHorizontalAlignment(JTextField.RIGHT);
 jt2.setHorizontalAlignment(JTextField.RIGHT);
 
 //cambiando color , tamaÃ±o de borde 
 jt1.setBorder(BorderFactory.createLineBorder(Color.red,2,true));
 jt2.setBorder(BorderFactory.createLineBorder(Color.red,2,true));
 jt3.setBorder(BorderFactory.createLineBorder(Color.GREEN,2,true));
 
 //ocultando el jlabel   , resultado
 jl3.setVisible(false);  jt3.setVisible(false); 
 //aÃ±adiendo objetos a la ventana
 jf.add(jl1); jf.add(jt1); jf.add(bt1); jf.add(jt2); jf.add(jl2);
 jf.add(jl3); jf.add(jt3);
 //margeners para texto en boton 
 bt1.setMargin(new Insets (1,5,1,5));
 //aÃ±adiendo el listener a los botones para manipulr los eventos del click
 bt1.addActionListener(this);
 
 
 jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //finaliza el programa cuando click en la X
 jf.setResizable(false);//para configuara si se remendisiona la ventana 
 jf.setLocation((int ) (d.getWidth()/2),50);// para ubicar la ventana
 jf.setSize(400,150);//cONFIGUARA EL TAMAÃ‘O
 jf.setVisible(true);//CONFIGURANDO LA VISUALIXACION DE LA PANTALKLA
 
}


public static void main (String[]args){
    Multpli gj = new Multpli(){}; // uso de constructor de la ventana
    
}
public void actionPerformed(ActionEvent e){//sobreescribimos el metodo del listener
    int n1,n2,nr ;//variables donde se almacena el numero introducido
    if(e.getSource()==bt1 && jt3.getText().equals("")){//podemos comparar por el contenido del botton
    
        //parseo
        n1 = Integer.parseInt(jt1.getText());
        n2 = Integer.parseInt(jt2.getText());
        
        nr = n1 * n2 ; //operacion
        
        //mnostrando el resultado
        jl3.setVisible(true); jt3.setVisible(true);
        
       jt3.setBackground(Color.lightGray);
       jt3.setText(""+nr);/*mostramos el valor mediante el metodo .setText() como muestra cadenas
       anteponemos una cadena vacia y concatenamos resultados 
       */
    }
    else{//oculta
        jt1.setText(""); jt2.setText("");  jt3.setText("");
        jl3.setVisible(false); jt3.setVisible(false);
        
        
    }
}
}