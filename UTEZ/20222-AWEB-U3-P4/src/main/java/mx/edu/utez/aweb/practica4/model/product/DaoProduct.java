package mx.edu.utez.aweb.practica4.model.product;

import mx.edu.utez.aweb.practica4.model.BeanPerson;
import mx.edu.utez.aweb.practica4.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoProduct {

    public List<BeanProduct> getProducts(){

        List<BeanProduct>  listProducts = new ArrayList<>();

        try {
            Connection connection = MySQLConnection.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from products");
            while (rs.next()){
                BeanProduct product = new BeanProduct();
                product.setId(rs.getInt("id_products"));
                product.setName(rs.getString("name"));
                product.setCategory(rs.getString("category"));
                product.setPrice(rs.getDouble("price"));

                listProducts.add(product);
            };

            rs.close();
            connection.close();
            statement.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return listProducts;

    }

    public int save(BeanProduct product) {
        int idGenerated=0;

        try
                (Connection con  = MySQLConnection.getConnection();


                 PreparedStatement pstm =
                         con.prepareStatement(
                                 "INSERT INTO products (name,price,category,file_name) VALUES(?,?,?,?);",
                                 Statement.RETURN_GENERATED_KEYS
                         );


                )
        {
            pstm.setString(1,product.getName());
            pstm.setDouble(2,product.getPrice());
            pstm.setString(3,product.getCategory());
            pstm.setString(4,product.getFileName());
            if (pstm.executeUpdate()==1){
                try(ResultSet keys=pstm.getGeneratedKeys()){
                    idGenerated=keys.next()?keys.getInt(1):0;
                }
            }
        } catch(Exception e) {
            e.printStackTrace();
        }

        return idGenerated;
    }
}
