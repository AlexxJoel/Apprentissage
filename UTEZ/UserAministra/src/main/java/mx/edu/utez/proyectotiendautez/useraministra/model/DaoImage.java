package mx.edu.utez.proyectotiendautez.useraministra.model;


import mx.edu.utez.proyectotiendautez.useraministra.utils.ConexionMysql;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoImage {

    Connection conn = new ConexionMysql().getConexion(); //Pasamos la conexion del ConexionMysql para aca
    PreparedStatement pst;
    ResultSet rs;
    String query_add = "INSERT INTO `images` (`id_image`, `is_main`, `image`, `products_id_products`) VALUES (NULL, 1, ?,0);";

    public DaoImage() {
    }

    public void addimage(InputStream image){
        boolean result=false;
        try{
            pst = conn.prepareStatement(query_add);
            pst.setBlob(1,image);
            result = pst.executeUpdate()== 1 ;
        }catch (SQLException e){
            System.out.println(e);
        }finally {
            System.out.println("Cerrar conexion");
        }
        System.out.println(result);
    }
}
