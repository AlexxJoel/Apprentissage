package mx.edu.utez.aweb.practica4.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {

    public static Connection getConnection(){

        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            return DriverManager.getConnection("jdbc:mysql://192.168.67.33/clase","clase","root");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void main(String[] args) {
        try {
            Connection conexion = MySQLConnection.getConnection();
            if (conexion != null) {
                System.out.println("Conectado");
                conexion.close();
            }
            else{
                System.out.println("No conectado");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


    }


}
