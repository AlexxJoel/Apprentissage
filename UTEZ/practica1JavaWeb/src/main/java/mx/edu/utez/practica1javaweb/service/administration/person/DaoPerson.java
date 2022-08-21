package mx.edu.utez.practica1javaweb.service.administration.person;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import mx.edu.utez.practica1javaweb.model.administration.person.beanPerson;
import mx.edu.utez.practica1javaweb.utility.conexionMysql;
import mx.edu.utez.practica1javaweb.utility.conexionMysql2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoPerson {
       Logger logger = LoggerFactory.getLogger(DaoPerson.class);
    public List<beanPerson> consultarUsuarios() {
        List<beanPerson> listPersons = new ArrayList<>();
        try (
                Connection con = conexionMysql.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM user;");
        ) {
            while (rs.next()) {
                beanPerson user = new beanPerson();
                user.setId(rs.getInt("iduser"));
                user.setNombre(rs.getString("name"));
                user.setUser(rs.getString("user"));
                user.setPass(rs.getString("pass"));
                listPersons.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        for (int i=0; i<=listPersons.size()-1;i++){
            System.out.println(listPersons.get(i).getNombre());
        }
        return listPersons;

    }
        public beanPerson consultaLogin (beanPerson usuario){
            beanPerson login=null;
            try{
                Connection con= conexionMysql2.getConnection();
                String sqlLogin="SELECT * FROM user WHERE user=? AND pass=?;";
                PreparedStatement ps=con.prepareStatement(sqlLogin);
                ps.setString(1,usuario.getUser());
                ps.setString(2,usuario.getPass());
                ResultSet res= ps.executeQuery();
                if(res.next()){
                    login=new beanPerson(res.getInt("iduser"),
                            res.getString("user"), res.getString("pass"));
                    System.out.println(res.getInt("iduser"));
                    System.out.println(res.getString("user"));
                    System.out.println(res.getString("pass"));
                }
            }catch(Exception e){
                e.printStackTrace();
                //logger.error(e.getMessage());
            }
            return login;
        }

    //Metodo para consultar por un ID en la tabla user
    public beanPerson obtenerUser(int id) {
        beanPerson user = new beanPerson();
        try (Connection con = conexionMysql2.getConnection();
             PreparedStatement stm = con.prepareStatement("select * from user where iduser=?");
        ) {
            stm.setInt(1, id);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    user.setId(rs.getInt("iduser"));
                    user.setNombre(rs.getString("name"));
                    user.setUser(rs.getString("user"));
                    user.setPass(rs.getString("pass"));

                }

            } catch (Exception e) {
                logger.error(e.getMessage());
            }

        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return user;
    }

    //Metodo para modificar un registro de la tabla user
    public boolean updateUser(beanPerson user){
        boolean status=false;
        try{
            Connection con=conexionMysql2.getConnection();
            String sql="UPDATE user SET name=?, user=?, pass=? WHERE iduser="+user.getId();
            PreparedStatement pstm=con.prepareStatement(sql);
            pstm.setString(1,user.getNombre());
            pstm.setString(2,user.getUser());
            pstm.setString(3,user.getPass());

            if(pstm.executeUpdate()==1){
                status=true;
            }
            pstm.close();
            con.close();

        }catch (SQLException e){
            logger.error(e.getMessage());

        }
        return status;
    }

    //Metodo para eliminar registros
    public boolean deleteUser (beanPerson user){
        boolean status=false;
        try{
            Connection con=conexionMysql2.getConnection();
            String sql="DELETE FROM user WHERE iduser="+user.getId();
            PreparedStatement pstm=con.prepareStatement(sql);
            if(pstm.executeUpdate()==1){
                status=true;
            }
            pstm.close();
            con.close();
        }catch(SQLException e){
            logger.error(e.getMessage());
        }

        return  status;
    }

    //Metodo para registrar en la tabla usuarios
    public boolean registrarUser(beanPerson user) {
        try (Connection con = conexionMysql2.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into user(name,user,pass) values(?,?,?)")) {
                pstm.setString(1, user.getNombre());
                pstm.setString(2, user.getUser());
                pstm.setString(3, user.getPass());
                return pstm.executeUpdate() == 1;
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        //
    }


    }

