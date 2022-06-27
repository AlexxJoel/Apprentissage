/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tablas.de.pkg1.al.pkg10;

/**
 *
 * @author EQUIPO34
 */
public class TablasDe1Al10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int r;
        for(int i=1; i<=10; i++){
         for(int j=1; j<=10;j++){
            r=i*j;
            System.out.println(i+"*"+j+"="+r);
        }
    }
    
}
}