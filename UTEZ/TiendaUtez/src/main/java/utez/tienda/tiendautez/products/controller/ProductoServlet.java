package utez.tienda.tiendautez.products.controller;

import utez.tienda.tiendautez.administrator.model.AdminBean;
import utez.tienda.tiendautez.products.model.ProductoGeneralBean;
import utez.tienda.tiendautez.service.ServiceAdmin;
import utez.tienda.tiendautez.service.ServiceProducts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ProductoServlet", value = "/ProductoServlet")
public class ProductoServlet extends HttpServlet {

    Logger logger = Logger.getLogger("AdminServlet");
    ServiceProducts service = new ServiceProducts();
    String action;
    String view;
    String urlRedirect;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        view = req.getParameter("accion");  //----------Tomaremos la accion para ver que hacer esto va hacer mediante la url
        logger.log(Level.INFO,"GET: "+view);


        switch (view) {
            case "verProducts":
                 System.out.println("ProductoServlets");
                List<ProductoGeneralBean> listProducts = service.watchProductsGeneral();
                //System.out.println(listAdmis.size());
                req.setAttribute("productos",listProducts);
                urlRedirect = "WEB-INF/administrator/viewAdmin/userComun.jsp";
                break;


            case "addProduct":
                String[] infoGeneral = req.getParameterValues("datosGeneral[]");


                urlRedirect = "WEB-INF/productos/viewProduct/createProduct.jsp";
                break;
            default:
        }

        req.getRequestDispatcher(urlRedirect).forward(req,res);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }
}
