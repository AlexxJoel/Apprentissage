package mx.edu.utez.aweb.practica4.control.product;

import mx.edu.utez.aweb.practica4.model.product.BeanProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletProduct", urlPatterns = {
        "/list-products", //get
        "/create-product", //get
        "/save-product", //post
        "/get-product", //get
        "/update-product", //post
        "/delete-product" //post
    }
)
@MultipartConfig(
        fileSizeThreshold = 1024*1024,
        maxFileSize = 1024*1024*5,
        maxRequestSize = 1024*1024*5*5
)
public class ServletProduct extends HttpServlet {

    private final String UPLOAD_DIRECTORY="C:\\directory-upload";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String option = request.getServletPath();

        switch (option) {

            case "/list-products":
                ServiceProduct serviceProduct=new ServiceProduct();
                List<BeanProduct> list=serviceProduct.getProducts();
                request.setAttribute("listProducts",list);
                request.getRequestDispatcher("/WEB-INF/view/products/list-products.jsp").forward(request,response);
                break;

            case "/create-product":
                request.getRequestDispatcher("/WEB-INF/view/products/create-product.jsp").forward(request,response);
                break;

            case "/get-product":

                request.getRequestDispatcher("/WEB-INF/view/products/get-product.jsp").forward(request,response);
                break;

            default:
                response.sendRedirect("list-products");
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        switch (option) {
            case"/save-product":
                String name=request.getParameter("name")!=null?request.getParameter("name"):"";
                String category=request.getParameter("category")!=null?request.getParameter("category"):"";
                String priceString=request.getParameter("price")!=null?request.getParameter("price"):"";
                Part fileRequest=request.getPart("photo");
                if (fileRequest!=null){
                    BeanProduct product=new BeanProduct();
                    String fileName=fileRequest.getSubmittedFileName();
                    try {
                        double price=Double.parseDouble(priceString);
                        product.setName(name);
                        product.setPrice(price);
                        product.setCategory(category);
                        product.setFileName(fileName);
                        ServiceProduct serviceProduct=new ServiceProduct();
                        int idGenerated=serviceProduct.save(product);
                        if(idGenerated>0){
                            String uploadPath=UPLOAD_DIRECTORY+ File.separator+ idGenerated;
                            File directory=new File(uploadPath);
                            if (!directory.exists()) {
                                directory.mkdir();
                            }
                            fileRequest.write(uploadPath+File.separator+fileName);
                        }
                        response.sendRedirect("list-products");



                    }catch (Exception e){
                        e.printStackTrace();
                        response.sendRedirect("list-products");
                    }
                }else{
                response.sendRedirect("list-products");
                }
                break;
            default:
                response.sendRedirect("list-products");
        }
    }
}
