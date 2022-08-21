package utez.tienda.tiendautez.Offers;

import utez.tienda.tiendautez.products.model.CategoriasDao;
import utez.tienda.tiendautez.products.model.ProductoCombinacionesDao;
import utez.tienda.tiendautez.products.model.ProductoGeneralBean;
import utez.tienda.tiendautez.products.model.ProductoGeneralDao;
import utez.tienda.tiendautez.utils.ConexionMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OffersDao {
    Connection connect;
    PreparedStatement pst;
    ResultSet rs;

    private  final  String QUERY_CONSULT ="SELECT * FROM offers";
    private  final  String QUERY_CONSULT_UNIQUE= "SELECT * FROM offers WHERE id_offers= ?";
    private  final  String QUERY_CREATE= "INSERT INTO `utezshop`.`offers` (`name`, `discount`, `start_date`, `end_date`, `banner`) VALUES ('Mayo', '200', '2020-09-12', '2022-03-01', 'platerasofert.png')";
    private  final  String QUERY_UPDATE ="";
    private  final  String QUERY_DELETE = "";

    //-----------------------------------Read admins---------------------------------------------
    public List<OffersBean> watchProductsGeneral(){
        List<OffersBean> offersList = new ArrayList<>();
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CONSULT);
            rs = pst.executeQuery();

            while (rs.next()) {

                OffersBean offer = new OffersBean();
                offer.setId_offers(rs.getInt("id_offers"));
                offer.setName(rs.getString("name"));
                offer.se(rs.getInt("id_offers"));
                offer.setId_offers(rs.getInt("id_offers"));
                offer.setId_offers(rs.getInt("id_offers"));
                offersList.add(offer);
            }

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
        /*for (int i=0; i<=productsList.size()-1; i++) {
            System.out.println(productsList.get(i).toString());
            for (int j = 0; j < productsList.get(i).getCombination().size(); j++) {
                System.out.println(productsList.get(i).getCombination().get(j).toString());
            }
            System.out.println("\n");
        }*/
        return offersList;
    }

    //-----------------------------------Read One  admins---------------------------------------------

    public List<ProductoGeneralBean> watchProductsOne(int id ){
        List<ProductoGeneralBean> productsList = new ArrayList<>();
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CONSULT_UNIQUE);
            pst.setInt(1,id);
            rs = pst.executeQuery();

            if (rs.next()) {

                ProductoGeneralBean product = new ProductoGeneralBean();
                product.setId_products(rs.getInt("id_products"));
                product.setName(rs.getString("name"));
                product.setType_product(rs.getString("type_product"));
                product.setDescription(rs.getString("description"));
                product.setDescription_long(rs.getString("description_long"));
                product.setStatus(rs.getInt("status"));
                product.setCategory(new CategoriasDao().watchCategoryOne(rs.getInt("category_id_category")));
                product.setOffers_id_offers(rs.getInt("offers_id_offers"));
                product.setCombination(new ProductoCombinacionesDao().watchProductsCombination(product.getId_products()));
                productsList.add(product);
            }

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
        /*for (int i=0; i<=productsList.size()-1; i++) {
            System.out.println(productsList.get(i).toString());
            for (int j = 0; j < productsList.get(i).getCombination().size(); j++) {
                System.out.println(productsList.get(i).getCombination().get(j).toString());
            }
        }*/
        return productsList;
    }


    public static void main(String[] args) {
        new ProductoGeneralDao().watchProductsGeneral();
        //new ProductoGeneralDao().watchProductsOne(2);
    }
}
