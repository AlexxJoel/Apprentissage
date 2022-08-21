package mx.edu.utez.proyectotiendautez.useraministra.controller;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import mx.edu.utez.proyectotiendautez.useraministra.model.BeanAdmin;
import mx.edu.utez.proyectotiendautez.useraministra.model.DaoAdmin;
import mx.edu.utez.proyectotiendautez.useraministra.model.DaoImage;
import mx.edu.utez.proyectotiendautez.useraministra.service.ServiceAdmin;
import mx.edu.utez.proyectotiendautez.useraministra.utils.ResultAction;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
@MultipartConfig(maxFileSize = 1024*1024*100)

@WebServlet(name = "ServletAdmin", value ="/ServletAdmin")
public class ServletAdmin extends HttpServlet {

    BeanAdmin admin = null;
   // DaoAdmin daoAdmin = new DaoAdmin(); //Instanciamos el dao para hacer la query
    HttpSession sesionLogin;
    ResultAction result;
    //ServiceAdmin service = new ServiceAdmin();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8"); //Indicar que mandamos texto plano
        PrintWriter out = response.getWriter(); //Mandar a texto

        Gson gson = new Gson();

       // String boton = request.getParameter("accion");
       // String[] boton = request.getParameterValues("array1[]");
        String[] boton = request.getParameterValues("json[]");
        String[] boton2 = request.getParameterValues("array[]");



        System.out.println(boton2[0]);
        System.out.println(boton2[1]);
        BeanAdmin admins = null;

        //String cadena = "{\"password\":\"123\",\"correo\":\"joel\"}";

        for (int i = 0; i < boton.length ; i++) {
             admins = gson.fromJson(boton[i],BeanAdmin.class);
            System.out.println(admins.toString());

            //QUERY con los admins
        }

        //Indicar que mandamos texto plano

        Part filePart = request.getPart("image");
        admins.setImage(filePart.getInputStream());


        DaoImage lol = new DaoImage();
        lol.addimage(admins.getImage());
        System.out.println(admins.getImage());




        request.getRequestDispatcher("index.jsp");









        // System.out.println(boton[2]);
        //System.out.println(boton[1]);
        //System.out.println(boton[0]);
        //Caso------------------------------------------------------------------------------


    }
}
