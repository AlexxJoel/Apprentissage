package mx.edu.utez.practica1javaweb.controller.administration.person;

import mx.edu.utez.practica1javaweb.model.administration.person.beanPerson;
import mx.edu.utez.practica1javaweb.service.administration.person.DaoPerson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet(name = "ServletPerson",
        urlPatterns = {
                "/getPersons",
                "/cerrarSesion",
                "/createPerson",
                "/getPerson",
                "/deletePerson",
                "/updatePerson"}
                )

public class ServletPerson extends HttpServlet {
    Logger logger = Logger.getLogger("ServletPerson");
    String action;
    String urlRedirect = "/getPersons";
    @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        action = request.getServletPath();
        logger.log(Level.INFO,"GET: "+action);

            switch (action){
                case "/createPerson":
                                urlRedirect="createPerson.jsp";
                    break;
                case "/getPersons":
                     List<beanPerson> listPersons = new DaoPerson().consultarUsuarios();
                     request.setAttribute("listPersons",listPersons);
                     urlRedirect="consultarUsers.jsp";
                 break;

                case "/getPerson":
                    String idPersonString = request.getParameter("id")!=null?request.getParameter("id"):"0";
                    try{
                        int idPerson = Integer.parseInt(idPersonString);
                        beanPerson person = new DaoPerson().obtenerUser(idPerson);
                        request.setAttribute("person",person);
                        urlRedirect="updateUser.jsp";
                    }catch (Exception ex){
                        urlRedirect="/getPersons";
                    }
                    break;

                case "/cerrarSesion":
                    HttpSession sessionLogin=request.getSession(false);
                    RequestDispatcher dispatcher=null;

                    String mensaje="Gracias por utilizar el sistema, Bye!";
                    sessionLogin.removeAttribute("user");
                    sessionLogin.removeAttribute("pass");
                    sessionLogin.removeAttribute("id");
                    sessionLogin.invalidate();
                    dispatcher=request.getRequestDispatcher("index.jsp");
                    request.setAttribute("mensaje",mensaje);
                    dispatcher.forward(request,response);

                    break;

            default:
           List<beanPerson> listPersons1 = new DaoPerson().consultarUsuarios();
           request.setAttribute("listPersons",listPersons1);
           urlRedirect="consultarUsers.jsp";
           break;
        }
        request.getRequestDispatcher(urlRedirect).forward(request,response);

        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        }
    }

