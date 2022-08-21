package utez.tienda.tiendautez.products.gestion.controller;

import com.google.gson.Gson;
import utez.tienda.tiendautez.category.model.CategoryBean;
import utez.tienda.tiendautez.category.model.CategoryDao;
import utez.tienda.tiendautez.images.model.ImagesBean;
import utez.tienda.tiendautez.images.model.ImagesDao;
import utez.tienda.tiendautez.offers.model.BeanOffer;
import utez.tienda.tiendautez.products.gestion.model.CombinationPDBean;
import utez.tienda.tiendautez.products.gestion.model.CombinationPDDao;
import utez.tienda.tiendautez.products.gestion.model.ProductBean;
import utez.tienda.tiendautez.products.gestion.model.ProductDao;
import utez.tienda.tiendautez.service.ServiceAdmin;
import utez.tienda.tiendautez.service.ServiceOffer;
import utez.tienda.tiendautez.utils.ResultAction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;
@MultipartConfig(maxFileSize = 1024*1024*100)
@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {

    Logger logger = Logger.getLogger("ProductServlet");

    ServiceOffer serviceOffer = new ServiceOffer();

    String urlRedirect = "getProducts" ;

    ProductDao daoProduct = new ProductDao();
    CombinationPDDao combProduct = new CombinationPDDao();

    ImagesDao imagesDao = new ImagesDao();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        int init=0;
        ProductBean products = new ProductBean();


        switch (accion){
            case "getProducts":
                List<ProductBean> listProducts = daoProduct.showProducts();
                //System.out.println(listProducts.size());
                req.setAttribute("productos",listProducts);
                urlRedirect = "WEB-INF/products/indexProducts.jsp";
                break;

            case "createProducts":
                List<CategoryBean> category =  new CategoryDao().allCategories();
               // System.out.println(category.size());
                req.setAttribute("listCategory", category);
                urlRedirect = "WEB-INF/products/createProduct.jsp";
                break;


            case "seeGeneral":
                String id = req.getParameter("id");
                ProductBean product = daoProduct.findProducts(Integer.parseInt(id));
                //System.out.println(                product.toString());
                req.setAttribute("product", product);
                urlRedirect = "WEB-INF/products/createCombinations.jsp";
                break;

            case "updateStatus":
                init = Integer.parseInt(req.getParameter("id"));
                int status = Integer.parseInt(req.getParameter("status"));
                boolean lol = daoProduct.updateStatus(init,status);
                System.out.println(lol);
                urlRedirect = "ProductServlet?accion=getProducts";
                break;

            case "dropRowLogic":
                init = Integer.parseInt(req.getParameter("id"));
                int delete = Integer.parseInt(req.getParameter("delete"));
                daoProduct.updateDelete(init,delete);
               // System.out.println(delete+"    "+init+"----------------------------");
                urlRedirect = "ProductServlet?accion=getProducts";
                break;
            case "addOfferProduct":
                products.setId_products(Integer.parseInt(req.getParameter("id_products")));
                int id_offers = Integer.parseInt(req.getParameter("id_offers"));
                products.setOffers_id_offers(id_offers);
                boolean lolo = daoProduct.updateAddOffer(products);
                System.out.println(lolo);
                urlRedirect = "/addOffer";
                break;


            default:

        }


        req.getRequestDispatcher(urlRedirect).forward(req,res);



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");
      // System.out.println(action);
        String url="AdminServlet?accion=login";
        Gson gson = new Gson();
        ProductBean product = null;

            switch (action){
                case "createNormal":
                    product = new ProductBean();
                    product.setName(req.getParameter("nameProducts"));
                    product.setDescription(req.getParameter("shortDescription"));
                    Part mainImage = req.getPart("mainImage");
                    product.setImageToInsert(mainImage.getInputStream());
                    product.setCategory_id_category(Integer.parseInt(req.getParameter("category")));
                    product.setDescriptionLong(req.getParameter("longDescription"));
                    int result = daoProduct.addProductGeneral(product);

                    product.setId_products(result);
                    if (result!=0){

                        System.out.println("Inserto Productos e imagenes");

                    }else
                        System.out.println(" No inserto productos e imagenes");
                    url="ProductServlet?accion=seeGeneral&id="+result;
                    break;

                case "createCombinations":
                    product = new ProductBean();
                    product.setType(req.getParameter("type"));
                    product.setStatus(Integer.parseInt(req.getParameter("status")));
                    int idproduct = Integer.parseInt(req.getParameter("id"));
                    product.setId_products(idproduct);

                  //  System.out.println(product.getType());
                   // System.out.println(product.getStatus());
                    //System.out.println(product.getId_products());
                    daoProduct.updateStatusAndType(product);
                    String[] ch = req.getParameterValues("ch[]");
                    String[] md = req.getParameterValues("md[]");
                    String[] gr = req.getParameterValues("gr[]");
                    String[] xgr = req.getParameterValues("xgr[]");
                    String[] simple = req.getParameterValues("simple[]");

                    CombinationPDBean cProduct = null;

                    if (product.getType().equalsIgnoreCase("Simple")){
                        cProduct = gson.fromJson(simple[0],CombinationPDBean.class);
                        combProduct.saveCombination(cProduct,idproduct);

                    }else{
                        for (int i = 0; i < ch.length; i++) {
                            cProduct = gson.fromJson(ch[i],CombinationPDBean.class);
                            combProduct.saveCombination(cProduct,idproduct);

                            cProduct = gson.fromJson(md[i],CombinationPDBean.class);
                            combProduct.saveCombination(cProduct,idproduct);

                            cProduct = gson.fromJson(gr[i],CombinationPDBean.class);
                            combProduct.saveCombination(cProduct,idproduct);

                            cProduct = gson.fromJson(xgr[i],CombinationPDBean.class);
                            combProduct.saveCombination(cProduct,idproduct);
                        }
                    }

                //Se debe hacer un update en el prodcuto general por el status y tipo de prodcuto
                //Se deben insertar todas las combinaciones

                    break;


                case "savePhotoSecundary":
                    int id = Integer.parseInt(req.getParameter("id"));
                    Part image = req.getPart("secondary");
                    ImagesBean  imagesBean4 = new ImagesBean(image.getInputStream(),id);
                    boolean a = imagesDao.addImages(imagesBean4);
                    System.out.println(a);
                    System.out.println(id);
                    url="ProductServlet?accion=seeGeneral&id="+id;
                    break;

                default:
            }

        res.sendRedirect(url);
    }
}
