package mx.edu.utez.proyectotiendautez.useraministra;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        request.getRequestDispatcher("/WEB-INF/view/loginAdmin.jsp").forward(request,response);

    }

    public void destroy() {
    }
}