<%@ page import="java.util.List" %>
<%@ page import="utez.tienda.tiendautez.administrator.model.AdminBean" %><%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 06/08/2022
  Time: 01:11 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  String username=(String)(session.getAttribute("username"));
    String email=(String)(session.getAttribute("email"));
    Integer rol=(Integer)(session.getAttribute("rol"));

    if(email != null && username !=null && rol==1){
     //   System.out.println(" pass: " +username + " rol "+ rol);
        List<AdminBean> admins= (List<AdminBean>) request.getAttribute("listAdmins");

%>


<html>
<head>
    <title>Administrador</title>
    <%@include file="../templateAdmin/header.jsp"%>
</head>
<body>
<header>
    <%@include file="../templateAdmin/navRoot.jsp"%>
</header>

<div class="p-3 rounded rounded-3" id="fondo">
    <div id="fondo-blanco" class="rounded p-4 shadow">
        <main class="container-fluid">

            <div class="row ">
                <div class="col col-lg-3 col-md-3 col-sm-12 col-12  p-2">
                    <h1 id="titulo">Administradores</h1>
                </div>
                <div class="col col-lg-7 col-md-9 col-sm-12 col-12 p-2">
                    <form class="d-flex align-items justify-content-center">
                        <input class="form-control me-2" type="search" placeholder="Busca" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Buscar</button>
                    </form>

                </div>
                <div class="col col-lg-2 col-md-4 col-sm-12 col-12 p-2">
                    <a class="btn btn-secondary" href="AdminServlet?accion=createAdmin" role="button">Nuevo admin</a>
                </div>
            </div>

            <!--------------------------------------------------------------------------------------------------->

            <div class="row">
                <div class="col col-12">
                    <table class="table" id="tabla">
                        <thead>
                        <tr class="text-light">
                            <th scope="col"> Nombre</th>
                            <th scope="col"> Correo</th>
                            <th scope="col">Gestión </th>
                        </tr>

                        </thead>
                        <tbody>
                        <% for (AdminBean admin: admins) { %>
                            <tr>
                                <td><%=admin.getUsername().toUpperCase() %></td>
                                <td><%=admin.getEmail().toUpperCase() %></td>
                                <td> <a class="btn btn-primary" href="<%=admin.getIdAdmin() %>"
                                        role="button">Editar</a>
                                    <a class="btn btn-danger" href="<%=admin.getIdAdmin()%>"
                                       role="button">Eliminar</a>
                                </td>
                            </tr>
                        <%}%>
                        </tbody>
                    </table>

                </div>
            </div>

            <!--------------------------------------------------------------------------------------------------->
            <div class="row" id="centrado">
                <div class="col col-lg-8 col-sm-12 col-12 p-2">
                    Mostrando 2 de 10 resultados
                </div>


                <div class="col col-lg-1">
                    <a href="#" style="color: #002f61 ;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                             class="bi bi-arrow-left-square-fill" viewBox="0 0 16 16">
                            <path d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1z"></path>
                        </svg>
                    </a>
                </div>

                <div class="col col-lg-2">
                    Página 1
                </div>

                <div class="col col-lg-1">
                    <a href="#" style="color: #002f61 ;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                             class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
                            <path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"></path>
                        </svg>
                    </a>
                </div>
            </div>


        </main>
    </div>
</div>





</body>
<%@include file="../templateAdmin/footer.jsp"%>
<%@include file="../templateAdmin/footerNoJS.jsp"%>
</html>


<% }else{
  //  System.out.println("No hay sesión iniciada!");
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}%>