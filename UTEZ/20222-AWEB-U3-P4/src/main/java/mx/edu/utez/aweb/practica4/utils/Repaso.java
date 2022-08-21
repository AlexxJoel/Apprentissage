package mx.edu.utez.aweb.practica4.utils;

public class Repaso {

    public static void main(String[] args) {
        Television tv1 = new Television();
        Television tv2on = new Television(true);
        Television tvChannel5 = new Television(true,5,50);

        tv1.setVolumen(60);
        tv2on.setChannel(6);
        tvChannel5.setVolumen(0);

        System.out.println("Volumen Tv: 1 " + tv1.getVolumen());
        System.out.println("Volumen Tv: 2 " + tv2on.getVolumen());
        System.out.println("Volumen Tv: 3 " + tvChannel5.getVolumen());

    }

}
