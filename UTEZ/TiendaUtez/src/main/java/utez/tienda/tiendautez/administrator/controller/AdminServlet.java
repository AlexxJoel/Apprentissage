package utez.tienda.tiendautez.administrator.controller;

import utez.tienda.tiendautez.administrator.model.AdminBean;
import utez.tienda.tiendautez.service.ServiceAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "AdminServlet", value = "/AdminServlet")
public class AdminServlet extends HttpServlet {

    Logger logger = Logger.getLogger("AdminServlet");
    ServiceAdmin service = new ServiceAdmin();
    String action;
    String view;
    HttpSession sesion;
    String urlRedirect;

    //------------------------------------------Redireccionamiento a las vistas
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        view = req.getParameter("accion");  //----------Tomaremos la accion para ver que hacer esto va hacer mediante la url
        logger.log(Level.INFO,"GET: "+view);



        switch (view) {
            case "login":
               // System.out.println("va al login ");
                urlRedirect = "WEB-INF/administrator/login.jsp";
                break;

            case "acceder":
                Integer rol = (Integer) sesion.getAttribute("rol");
                //String rol = req.getParameter("rol");
                if (rol==1){
                    List<AdminBean> listAdmis = service.watchAdmins();
                    //System.out.println(listAdmis.size());
                    req.setAttribute("listAdmins",listAdmis);
                    urlRedirect = "WEB-INF/administrator/viewAdmin/userRoot.jsp";
                }else {
                    urlRedirect = "WEB-INF/administrator/viewAdmin/userComun.jsp";
                }
                break;

            case "comun":
                    urlRedirect = "ProductoServlet?accion=verProducts"; //Pa migrar a otro servlets

                break;

            case "cerrarSesion":
                //System.out.println("Cerrar sesion");
                sesion = req.getSession(false);
                sesion.removeAttribute("username");
                sesion.removeAttribute("email");
                sesion.removeAttribute("rol");
                sesion.invalidate();
                break;

            case "createAdmin":
                urlRedirect = "WEB-INF/administrator/viewAdmin/createAdmin.jsp";
                break;

            case "watchAdmins":
                break;


            case "registerAdmin":
                break;





            case "updateAdmin":
                break;


            case "deleteAdmin":

                break;

            default:

        }

        req.getRequestDispatcher(urlRedirect).forward(req,res);
    }

    //---------------------------------------------Funciones con el Dao
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       String accionPost = req.getParameter("accionPost");
        AdminBean admin;
        RequestDispatcher dispatcher=null; //Para mandar variables en la vista
        String url="AdminServlet?accion=login";
       switch (accionPost){

           case "validarAdmin":
               sesion = req.getSession(true);
               admin = new AdminBean();
               admin.setEmail( req.getParameter("email"));
               admin.setPsw( req.getParameter("password"));
               admin = service.loginAdmin(admin) ;
                if (admin.getIdAdmin()!=0){
                    //Crea la sesión
                    sesion.setAttribute("username", admin.getUsername());
                    sesion.setAttribute("email",admin.getEmail());
                    sesion.setAttribute("rol",admin.getId_rol());
                    //Redirecciona a las vistas
                    url="AdminServlet?accion=login&icon=success&name="+admin.getUsername()+"&rol="+admin.getRol();
                }else {
                    url="AdminServlet?accion=login&fail=Correo o contraseña incorrecta";
                }
                res.sendRedirect(url);
               break;



           case "b":
               break;


           default:
       }

    }
}
