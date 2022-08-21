package mx.edu.utez.aweb.practica4.control.product;

import mx.edu.utez.aweb.practica4.model.product.BeanProduct;
import mx.edu.utez.aweb.practica4.model.product.DaoProduct;

import java.util.List;

public class ServiceProduct {

    public List<BeanProduct> getProducts(){
        DaoProduct daoProduct=new DaoProduct();
        return daoProduct.getProducts();
    }

    public  int save (BeanProduct product){
    DaoProduct daoProduct=new DaoProduct();
    return  daoProduct.save(product);
    }
}
