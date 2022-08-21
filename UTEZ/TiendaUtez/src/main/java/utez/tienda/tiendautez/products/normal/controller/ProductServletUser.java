package utez.tienda.tiendautez.products.normal.controller;

import com.google.gson.Gson;
import utez.tienda.tiendautez.category.model.CategoryBean;
import utez.tienda.tiendautez.category.model.CategoryDao;
import utez.tienda.tiendautez.images.model.ImagesBean;
import utez.tienda.tiendautez.images.model.ImagesDao;
import utez.tienda.tiendautez.offers.model.BeanOffer;
import utez.tienda.tiendautez.offers.model.DaoOffer;
import utez.tienda.tiendautez.products.gestion.model.CombinationPDBean;
import utez.tienda.tiendautez.products.gestion.model.CombinationPDDao;
import utez.tienda.tiendautez.products.gestion.model.ProductBean;
import utez.tienda.tiendautez.products.gestion.model.ProductDao;
import utez.tienda.tiendautez.utils.More;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;


@WebServlet(name = "ProductServletUser", value = "/ProductServletUser")
public class ProductServletUser extends HttpServlet {

    Logger logger = Logger.getLogger("ProductServlet");


    String urlRedirect = "index.jsp" ;

    ProductDao daoProduct = new ProductDao();
    CombinationPDDao combProduct = new CombinationPDDao();
    CategoryDao catedao = new CategoryDao();
    DaoOffer offers = new DaoOffer();





    ImagesDao imagesDao = new ImagesDao();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        accion = accion==null?"getProductsGeneral":accion;
        int init=0;
        int id_offers = 0 ;
        String id;

        ProductBean products = null;
        ProductDao productDao = new ProductDao();

        List<CategoryBean> category;
        switch (accion){
            case "getProductsGeneral":
                List<ProductBean> listProducts = daoProduct.showProducts();
                List<CategoryBean> listCategoris = catedao.allCategories();
                List<BeanOffer> listoffer = offers.showOffers();

                System.out.println(listProducts.size());
                System.out.println(listCategoris.size());
                System.out.println(listoffer.size());
                req.setAttribute("productos",listProducts);
                req.setAttribute("listCategoris",listCategoris);
                req.setAttribute("listoffer",listoffer);
                urlRedirect = "index.jsp";
                break;


            case "getProduc":
                int id3 = Integer.parseInt(req.getParameter("id"));
                products = daoProduct.findProducts(id3);
                req.setAttribute("product" , products);
                System.out.println(id3);
                urlRedirect = "seeProduct.jsp";
                break;



            case "getCategoriesproduct":
                List<ProductBean> listProducts1 = daoProduct.showProducts();
                List<CategoryBean> listCategoris1 = catedao.allCategories();
                List<BeanOffer> listoffer1 = offers.showOffers();
                int id_banner = Integer.parseInt(req.getParameter("idbanner"));

               // System.out.println(listProducts1.size());
                //System.out.println(listCategoris1.size());
                //System.out.println(listoffer1.size());
                //System.out.println(id_banner);

                req.setAttribute("productos",listProducts1);
                req.setAttribute("idbanner", id_banner);
                urlRedirect = "banner.jsp";
                break;

            default:

        }

        req.getRequestDispatcher(urlRedirect).forward(req,res);



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");
    }
}
