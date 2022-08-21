package utez.tienda.tiendautez.products.model;

import utez.tienda.tiendautez.utils.ConexionMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductoCombinacionesDao {


    Connection connect;
    PreparedStatement pst;
    ResultSet rs;

    private  final  String QUERY_CONSULT ="SELECT * FROM products_combination WHERE products_id_products=?";
    private  final  String QUERY_CONSULT_UNIQUE= "";
    private  final  String QUERY_CREATE= "";
    private  final  String QUERY_UPDATE ="";
    private  final  String QUERY_DELETE = "";

    //-----------------------------------Read admins---------------------------------------------
    public List<ProductoCombinacionesBean> watchProductsCombination(int id){
        List<ProductoCombinacionesBean> combinationList = new ArrayList<>();
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CONSULT);
            pst.setInt(1,id);
            rs = pst.executeQuery();

            while (rs.next()) {

                ProductoCombinacionesBean combi = new ProductoCombinacionesBean();
                combi.setId_combinations(rs.getInt("id_combinations"));
                combi.setColor(rs.getString("color"));
                combi.setSize(rs.getString("size"));
                combi.setPrice(rs.getDouble("price"));
                combi.setPieces(rs.getInt("pieces"));
                combi.setProducts_id_products(rs.getInt("products_id_products"));

                combinationList.add(combi);
            }

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
        /* (int i=0; i<=combinationList.size()-1; i++) {
            System.out.println(combinationList.get(i).toString());
        }*/
        return combinationList;
    }

    public static void main(String[] args) {
        new ProductoCombinacionesDao().watchProductsCombination(2);
    }
}
