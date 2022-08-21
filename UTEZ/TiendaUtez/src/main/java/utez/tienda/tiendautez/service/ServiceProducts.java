package utez.tienda.tiendautez.service;

import utez.tienda.tiendautez.administrator.model.AdminBean;
import utez.tienda.tiendautez.products.model.ProductoGeneralBean;
import utez.tienda.tiendautez.products.model.ProductoGeneralDao;

import java.util.List;

public class ServiceProducts {
    ProductoGeneralDao daoProduct = new ProductoGeneralDao();


    //-----------------------Watch all products---------------------------------
    public List<ProductoGeneralBean> watchProductsGeneral(){
        return  daoProduct.watchProductsGeneral();
    }





    public static void main(String[] args) {
        new ServiceProducts().watchProductsGeneral();
    }
}
