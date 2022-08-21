package mx.edu.utez.proyectotiendautez.useraministra.controller;

import mx.edu.utez.proyectotiendautez.useraministra.model.BeanAdmin;
import mx.edu.utez.proyectotiendautez.useraministra.service.ServiceAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletAlerts", value = "/ServletAlerts")
public class ServletAlerts extends HttpServlet {

    ServiceAdmin serv = new ServiceAdmin ();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String iniciar = request.getParameter("done");
        String who = request.getParameter("who");
        System.out.println(iniciar);
        //System.out.println(who);

        if (iniciar.equalsIgnoreCase("principal")){

            if (who.equalsIgnoreCase("root")){
                //System.out.println("soy root");
                //System.out.println("Entroooo");
                List<BeanAdmin> admins = serv.seeAdmin();
                System.out.println(admins.size());
                request.setAttribute("admins",admins);
                request.getRequestDispatcher("WEB-INF/view/admins.jsp").forward(request,response);

            }else{
                request.getRequestDispatcher("WEB-INF/view/noRoots.jsp").forward(request,response);
                //System.out.println("soy comun");
            }

        } else if (iniciar.equalsIgnoreCase("login")) {
            request.getRequestDispatcher("index.jsp").forward(request,response);

        } else if (iniciar.equalsIgnoreCase("addAdmin")) {
            System.out.println("Agrgear");
            request.getRequestDispatcher("WEB-INF/view/addAdmin.jsp").forward(request,response);

        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
