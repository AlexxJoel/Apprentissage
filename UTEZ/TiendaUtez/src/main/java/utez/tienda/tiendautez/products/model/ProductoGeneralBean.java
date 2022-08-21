package utez.tienda.tiendautez.products.model;

import java.io.InputStream;
import java.util.List;

public class ProductoGeneralBean {

    //Datos generales del bean

    private int id_products;
    private String name;
    private String description;
    private String description_long;
    private int status; //1 es activo 0 Es inactivo
    private String imagURL;
    private int delete; //1 es activo 0 Es inactivo, 0 no esta eliminado
    private CategoriasBean category;  //Forenkkey
    private OfertasBean oferta;  //Forenkkey
    private ProductoCombinacionesBean combina;
    private List<ProductoCombinacionesBean> combination;




}

