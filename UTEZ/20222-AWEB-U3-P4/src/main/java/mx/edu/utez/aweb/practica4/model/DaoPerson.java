package mx.edu.utez.aweb.practica4.model;

import mx.edu.utez.aweb.practica4.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoPerson {

    public List<BeanPerson> listPersons() {

        List<BeanPerson>  listPersons = new ArrayList<>();

        try {
            Connection connection = MySQLConnection.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from persons");
            while (rs.next()){
                BeanPerson person = new BeanPerson();
                person.setId(rs.getInt("id_persons"));
                person.setName(rs.getString("name"));
                person.setAge(rs.getInt("age"));

                listPersons.add(person);
            };

            rs.close();
            connection.close();
            statement.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return listPersons;
    }

    public boolean savePerson(BeanPerson person){

        boolean result = false;

        try
                (Connection con  = MySQLConnection.getConnection();
                 PreparedStatement pstm = con.prepareStatement("INSERT INTO persons (name,age) VALUES(?,?);");

                )


        {
            pstm.setString(1, person.getName());
            pstm.setInt(2, person.getAge());
            result = pstm.executeUpdate() == 1;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public BeanPerson getPerson(int id){
        BeanPerson person = new BeanPerson();

        try (
                Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement("SELECT * FROM persons where id_persons = ?;");
                ){

            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                person.setId(rs.getInt("id_persons"));
                person.setName(rs.getString("name"));
                person.setAge(rs.getInt("age"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return person;
    }

    public boolean deletePerson(int id){

        boolean result = false;

        try
                (Connection con  = MySQLConnection.getConnection();
                 PreparedStatement pstm = con.prepareStatement("DELETE FROM persons WHERE id_persons = ?;");

                )
        {
            pstm.setInt(1, id);
            result = pstm.executeUpdate() == 1;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return result;

    }


    public boolean updatePerson(BeanPerson person) {
        boolean result = false;

        try
                (Connection con  = MySQLConnection.getConnection();
                 PreparedStatement pstm = con.prepareStatement(
                         "UPDATE persons set name=?, age=? where id_persons = ?"
                 );

                )


        {
            pstm.setString(1, person.getName());
            pstm.setInt(2, person.getAge());
            pstm.setLong(3, person.getId());
            result = pstm.executeUpdate() == 1;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
