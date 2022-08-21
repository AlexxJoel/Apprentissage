package utez.tienda.tiendautez.products.gestion.model;

import utez.tienda.tiendautez.administrator.model.BeanAdmin;
import utez.tienda.tiendautez.administrator.model.DaoAdmin;
import utez.tienda.tiendautez.category.model.CategoryBean;
import utez.tienda.tiendautez.category.model.CategoryDao;
import utez.tienda.tiendautez.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CombinationPDDao {

    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;

    //-----------------------------FIND ONE CATRGORY ------------------------------------------------------
    private final String QUERY_FIND_CATEGORY = "SELECT * FROM products_combination WHERE products_id_products = ?  ORDER BY color ";

    public List<CombinationPDBean> findCombinations(int products_id_products){
        List<CombinationPDBean> listCombination = new ArrayList<>();

        try {
            conn = new MySQLConnection().getConnection();

            pstm = conn.prepareStatement(QUERY_FIND_CATEGORY);
            pstm.setInt(1,products_id_products);
            rs = pstm.executeQuery();

            while (rs.next()){
                CombinationPDBean combination = new CombinationPDBean();
                combination.setId_combinations(rs.getInt("id_combinations"));
                combination.setColor(rs.getString("color"));
                combination.setSize(rs.getString("size"));
                combination.setPrice(rs.getDouble("price"));
                combination.setPieces(rs.getInt("pieces"));
                combination.setProducts_id_products(rs.getInt("products_id_products"));

                listCombination.add(combination);

            }
        }catch (SQLException e){
            Logger.getLogger(DaoAdmin.class.getName()).log(Level.SEVERE, "Error en findCategory -> ", e);
        }finally {
            System.err.println("Close Combination's  Conection ");
        }


        /*for (CombinationPDBean combination : listCombination) {
            System.out.println(combination.toString());
        }*/

        return listCombination;
    }

    //--------------------------------------------------------------------------------------------------------
    private final String QUERY_INSERT_COMB = "INSERT INTO products_combination(color,size,price,pieces,products_id_products)VALUES(?,?,?,?,?)";

    public boolean saveCombination(CombinationPDBean cProduct,int id){
        boolean result = false;
        try {
            conn = new MySQLConnection().getConnection();
            pstm = conn.prepareStatement(QUERY_INSERT_COMB);
            pstm.setString(1,cProduct.getColor());
            pstm.setString(2,cProduct.getSize());
            pstm.setDouble(3,cProduct.getPrice());
            pstm.setInt(4,cProduct.getPieces());
            pstm.setInt(5,id);

            result=  pstm.executeUpdate()==1;
        }catch (SQLException e){
            Logger.getLogger(CombinationPDDao.class.getName()).log(Level.SEVERE, "Error en Savecategory -> ", e);
        }finally {
            System.err.print("Close Insert Combi");
        }
        return result;

    }


    //------------------------Delete------------------------


    //-----------------------------------------TEST---------------------------------

    public static void main(String[] args) {
        new CombinationPDDao().findCombinations(3);
    }
}
