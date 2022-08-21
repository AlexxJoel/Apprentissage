package img.imagenes.controlador;

import img.imagenes.modelo.ProductDao;
import img.imagenes.modelo.ProductoBean;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//@MultipartConfig
@WebServlet(name = "ImgenServlet", value = "/ImgenServlet")
public class ImgenServlet extends HttpServlet {


    ProductDao productDao = new ProductDao();
    ProductoBean p = new ProductoBean();

     @Override
protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
      String action = req.getParameter("accion");


      switch (action){
          case "guardar":

              ArrayList<String> lista = new ArrayList<>();
              try{
                  FileItemFactory file = new DiskFileItemFactory();
                  ServletFileUpload fileUpload = new ServletFileUpload(file);
                  List iteams = fileUpload.parseRequest(req) ;
                  for (int i = 0; i <  iteams.size(); i++) {
                      FileItem fileItem = (FileItem) iteams.get(i);
                      if (!fileItem.isFormField()){
                          System.out.println("nombre de la imagen ->"+fileItem.getName());
                          File f = new File("C:\\Users\\joelh\\Desktop\\Imagenes\\src\\main\\webapp\\images\\"+fileItem.getName()); //Esto se gaurd como una ruta

                          fileItem.write(f);

                          p.setRuta( fileItem.getName());
                      }else {
                          lista.add(fileItem.getString());
                      }
                  }
                  p.setNombre(lista.get(0));
                  productDao.agregar(p);
              }catch (Exception e){
                  System.out.println(e);
              }
              res.sendRedirect("ImgenServlet?accion=listar");
              break;

          default:

      }
  }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            String act = req.getParameter("accion");

            if (act.equalsIgnoreCase("listar")){

                List<ProductoBean> product = productDao.listar();
                req.setAttribute("productos", product);
                req.getRequestDispatcher("index.jsp").forward(req,res);
            }
    }

   /* @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nameImage = "akaza-de-demon-slayer_3840x2160_xtrafondos.com.jpg";
        Part archivo = req.getPart("fileImagen");
        InputStream inputStream = archivo.getInputStream();
        File file = new File("C:\\Users\\joelh\\Desktop\\Imagenes\\src\\main\\webapp\\images\\" + nameImage);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        int dato = inputStream.read();
        while (dato != -1) {
            fileOutputStream.write(dato);
            dato = inputStream.read();
        }

        fileOutputStream.close();
        inputStream.close();


        p.setNombre("Ultimo");
        p.setRuta(nameImage);

        try {
            productDao.agregar(p);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        res.sendRedirect("ImgenServlet?accion=listar");


    }*/
}
