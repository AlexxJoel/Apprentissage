package mx.edu.utez.aweb.practica4.control;

import mx.edu.utez.aweb.practica4.model.BeanAuthentication;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletAuthentication", urlPatterns = {
        "/login",
        "/logout"
}
)
public class ServletAuthentication extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String option = request.getServletPath();

        if (option.equals("/logout")) {
            HttpSession session = request.getSession(false);

            if (session != null) {
                session.invalidate();
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }

        } else {
            response.sendRedirect("index.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();

        if (option.equals("/login")) {
            String nickname = request.getParameter("nickname") != null ? request.getParameter("nickname") : "";
            String password = request.getParameter("password") != null ? request.getParameter("password") : "";

            ServiceAuthentication serviceAuthenticacion = new ServiceAuthentication();
            BeanAuthentication userAuthentication =  serviceAuthenticacion.login(nickname,password);

            if (userAuthentication.getUserId() != 0){
                HttpSession session = request.getSession(true);
                session.setAttribute("name", userAuthentication.getNickname());
                session.setAttribute("role", userAuthentication.getRol());
                response.sendRedirect("list-persons");
            } else {
                response.sendRedirect("index.jsp?message=error");
            }
//
//            if (nickname.equals("josa@gmail.com") && password.equals("123456")) {
//                HttpSession session = request.getSession(true);
//                session.setAttribute("name", "Jose Narváez");
//                session.setAttribute("role", "Administrador");
//                response.sendRedirect("list-persons");
//            } else {
//                response.sendRedirect("index.jsp?message=error");
//            }


        } else {
            //request.getRequestDispatcher("index.jsp").forward(request,response);
            response.sendRedirect("index.jsp");
        }
    }
}
