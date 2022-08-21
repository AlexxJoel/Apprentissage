package mx.edu.utez.proyectotiendautez.useraministra.model;

import mx.edu.utez.proyectotiendautez.useraministra.utils.ConexionMysql;
import org.eclipse.dirigible.database.sql.SqlException;

import javax.naming.ldap.PagedResultsControl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoAdmin {

    Connection conn = new ConexionMysql().getConexion(); //Pasamos la conexion del ConexionMysql para aca
    String query_login = "SELECT * FROM users INNER JOIN roles on roles_id=id WHERE correo=? && password=? ";
    String query_see = "SELECT * FROM users INNER JOIN roles on roles_id=id  ";
    String query_add = "INSERT INTO users(correo,user,password,roles_id)VALUES(?,?,?,'2')";
    PreparedStatement pst;
    ResultSet rs;

    public BeanAdmin consultLogin(BeanAdmin user) {
        BeanAdmin admin = new BeanAdmin();
        try {
            //preparamos el query
            pst = conn.prepareStatement(query_login);
            pst.setString(1, user.getCorreo());
            pst.setString(2, user.getPassword());
            rs = pst.executeQuery();

            while (rs.next()) {
                admin.setUser(rs.getString("user"));
                admin.setCorreo(rs.getString("correo"));
                admin.setPassword(rs.getString("password"));
                admin.setRoles_id(rs.getInt("id"));
                admin.setRoles_name(rs.getString("name"));

            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            System.out.println("Cerrar conexiones");
        }
        return admin;
    }

///Ver ADMIN-------------------------------

    public List<BeanAdmin> seeAdmin() {
        List<BeanAdmin> admins = new ArrayList<>();
        try {
            //preparamos el query
            pst = conn.prepareStatement(query_see);
            rs = pst.executeQuery();
            while (rs.next()) {
                BeanAdmin admin = new BeanAdmin();
                admin.setUser(rs.getString("user"));
                admin.setCorreo(rs.getString("correo"));
                admin.setPassword(rs.getString("password"));
                admin.setRoles_id(rs.getInt("id"));
                admin.setRoles_name(rs.getString("name"));
                admins.add(admin);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            System.out.println("Cerrar conexiones");
        }
        return admins;
    }

    //AddAdmin -------------------------------------
    public Boolean addAdmin(BeanAdmin admin){
        System.out.println(admin.getUser());
        Boolean result = false;
        try{
            pst = conn.prepareStatement(query_add);
            pst.setString(1,admin.getCorreo());
            pst.setString(2,admin.getUser());
            pst.setString(3,admin.getPassword());
            result = pst.executeUpdate()== 1 ;
        }catch (SQLException e){
            System.out.println(e);
        }finally {
            System.out.println("Cerrar conexion");
        }
        return result;
    }



    public static void main(String[] args) {
        BeanAdmin user = new BeanAdmin("j7798@gmail.com","123");
        BeanAdmin user2 = new BeanAdmin("joooea","j7798@gmail.com","123");

        boolean r = new DaoAdmin().addAdmin(user2);

        System.out.println(r);

        //user = new DaoAdmin().consultLogin(user);
        //System.out.println(user.getRoles_name());

        //List<BeanAdmin> lol = new DaoAdmin().seeAdmin();
        //System.out.println(lol.size());



    }
}
