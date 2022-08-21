package utez.tienda.tiendautez.products.model;

import utez.tienda.tiendautez.utils.ConexionMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoriasDao {

    Connection connect;
    PreparedStatement pst;
    ResultSet rs;

    private  final  String QUERY_CONSULT ="SELECT * FROM category ";
    private  final  String QUERY_CONSULT_UNIQUE= " SELECT * FROM category WHERE id_category=?";
    private  final  String QUERY_CREATE= "";
    private  final  String QUERY_UPDATE ="";
    private  final  String QUERY_DELETE = "";


    //--------------------------------------- WATCH COATEGORYES----------------------------------

    public List<CategoriasBean> watchCategoryGeneral(){
        List<CategoriasBean> productsList = new ArrayList<>();
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CONSULT);
            rs = pst.executeQuery();

            while (rs.next()) {
                CategoriasBean product = new CategoriasBean(rs.getInt("id_category"), rs.getString("name") );
                productsList.add(product);
            }

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
       /* for (CategoriasBean categoriasBean : productsList) {
            System.out.println(categoriasBean.toString());
        }*/
        return productsList;
    }

    //--------------------------------------- WATCH ONE  COATEGORYES----------------------------------

    public CategoriasBean watchCategoryOne(int id){
        CategoriasBean categoriasBean = new CategoriasBean();
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CONSULT_UNIQUE);
            pst.setInt(1,id );
            rs = pst.executeQuery();

            while (rs.next()) {
                 categoriasBean = new CategoriasBean(rs.getInt("id_category"), rs.getString("name") );
            }
        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
        //System.out.println(categoriasBean.toString());
        return categoriasBean;
    }

    public static void main(String[] args) {
        // new CategoriasDao().watchCategoryOne(1);
        new CategoriasDao().watchCategoryOne(1);
    }



}
