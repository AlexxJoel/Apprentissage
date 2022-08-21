package mx.edu.utez.aweb.practica4.control;

import mx.edu.utez.aweb.practica4.model.BeanPerson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(
        name = "ServletPerson",
        urlPatterns = {
                "/list-persons", //get
                "/get-person", //Get
                "/create-person", //get
                "/save-person", //Post
                "/update-person", //Post
                "/delete-person" //Delete
        }
)
public class ServletPerson extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String option = request.getServletPath();
        ServicePerson servicePerson;

        switch (option) {
            case "/list-persons":

                servicePerson = new ServicePerson();
                List<BeanPerson>  listPersons = servicePerson.listPerson();

                request.setAttribute("list", listPersons);
                request.getRequestDispatcher("/WEB-INF/view/list-persons.jsp").forward(request,response);

                break;

            case "/get-person":
                String idString = request.getParameter("id") != null ? request.getParameter("id") : "0";
                try {
                    int id = Integer.parseInt(idString);
                    servicePerson = new ServicePerson();
                    BeanPerson person = servicePerson.getPerson(id); //DAO consulta a la db
                    request.setAttribute("personX", person);
                    request.getRequestDispatcher("/WEB-INF/view/get-person.jsp").forward(request,response);
                } catch (Exception e) {
                    response.sendRedirect("list-persons");
                }

                break;

            case "/create-person":
                request.getRequestDispatcher("/WEB-INF/view/create-person.jsp").forward(request,response);
                break;

            default:
                response.sendRedirect("list-persons");
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String option = request.getServletPath();

        switch (option) {
            case "/save-person":

                //If ternario
                //Condicion ? valor true : valor false

                try {
                    String name = request.getParameter("name") != null ? (request.getParameter("name")) : "0";
                    String ageString = request.getParameter("age") != null ? (request.getParameter("age")) : "";

                    int age = Integer.parseInt(ageString);

                    ServicePerson servicePerson = new ServicePerson();
                    BeanPerson person = new BeanPerson();
                    person.setName(name);
                    person.setAge(age);

                    boolean result = servicePerson.savePerson(person);
                    response.sendRedirect("list-persons?result-save="+(result ? "ok" : "error"));
                } catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("list-persons");
                }
                break;

            case "/update-person":
                String idString = request.getParameter("id") != null ? request.getParameter("id") : "0";
                String nameUpdate = request.getParameter("name") != null ? (request.getParameter("name")) : "0";
                String ageUpdate = request.getParameter("age") != null ? (request.getParameter("age")) : "";

                try {
                    int id = Integer.parseInt(idString);
                    int age = Integer.parseInt(ageUpdate);

                    BeanPerson person = new BeanPerson(id, nameUpdate, age);

                    ServicePerson servicePerson = new ServicePerson();
                    boolean result = servicePerson.updatePerson(person);
                    response.sendRedirect("list-persons?result-update="+(result ? "ok" : "error"));


                } catch (Exception e) {
                    e.printStackTrace();
                    response.sendRedirect("list-persons");
                }

                break;

            case "/delete-person":
                String idStringDelete = request.getParameter("id") != null ? request.getParameter("id") : "0";

                try {
                    int id = Integer.parseInt(idStringDelete);
                    ServicePerson servicePerson = new ServicePerson();
                    boolean result = servicePerson.deletePerson(id);

                    response.sendRedirect("list-persons?result-delete="+(result ? "ok" : "error"));
                } catch (Exception e) {
                    response.sendRedirect("list-persons");
                }

                break;

            default:
                response.sendRedirect("list-persons");
                break;
        }
    }
}

