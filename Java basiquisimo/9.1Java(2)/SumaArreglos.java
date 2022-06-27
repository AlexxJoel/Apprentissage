
package sumaarreglos;
public class SumaArreglos {
    public SumaArreglos(int numeros[]){
        int acomula=0 ;
        for ( int l =0 ; l<5 ; l++){
            acomula=acomula+numeros[l];
        }
        System.out.println("El resultado es :"+ acomula);
    }

 
    public static void main(String[] args) {
    int numeros[]={2,3,4,5,9}; //pendiente 
    SumaArreglos suma = new SumaArreglos(numeros);    
    }
    
}
