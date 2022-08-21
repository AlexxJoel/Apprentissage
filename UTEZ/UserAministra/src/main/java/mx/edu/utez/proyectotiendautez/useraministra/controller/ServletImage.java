package mx.edu.utez.proyectotiendautez.useraministra.controller;


import mx.edu.utez.proyectotiendautez.useraministra.model.BeanAdmin;
import mx.edu.utez.proyectotiendautez.useraministra.model.DaoImage;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
@MultipartConfig(maxFileSize = 1024*1024*100)
@WebServlet(name = "ServletImage", value ="/ServletImage")
public class ServletImage extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Indicar que mandamos texto plano
        BeanAdmin admin = new BeanAdmin();
        Part filePart = request.getPart("image");
        admin.setImage(filePart.getInputStream());


       DaoImage lol = new DaoImage();
       lol.addimage(admin.getImage());
        System.out.println(admin.getImage());




       request.getRequestDispatcher("index.jsp");

    }
}
