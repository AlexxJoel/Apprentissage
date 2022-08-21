<%--
  Created by IntelliJ IDEA.
  User: HORUS
  Date: 10/08/2022
  Time: 08:36 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%
    String username=(String)(session.getAttribute("username"));
    String email=(String)(session.getAttribute("email"));
    Integer rol=(Integer)(session.getAttribute("rol"));

    if(email != null && username !=null && rol==1){
        System.out.println(" pass: " +username + " rol "+ rol);
%>


<html>
<head>
    <title>GESTION ADMINISTRADORES</title>
    <%@include file="/template/header.jsp"%>

</head>
<body>
<%@include file="/WEB-INF/administrator/templateAdmin/navbar.jsp"%>
<!-- *********************************************************AQUI EMPIEZA LA VISTA******************************************************  -->

    <!-- w=tamaño que abarca el texto   mx=posicion del texto -->

    <div id="fondo-blanco" class="rounded p-4 shadow">
        <!-- El fondo blanco -->
        <main class="container-fluid">
            <!-- Contenedor principal-->
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
                    <a class="btn btn-secondary" href="createAdmin" role="button">Nuevo admin</a>


                </div>

            </div>
            <!-- ------------Empieza tabla----------------- -->

            <div class="row">
                <div class="col col-12">
                    <c:if test="${param['result']}">
                        <p><c:out value="${param['message']}"></c:out></p>
                    </c:if>
                    <table class="table" id="tabla">
                        <thead>
                        <tr class="text-light">
                            <th scope="col">Id</th>
                            <th scope="col">Nombre de usuario</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Rol</th>
                            <th scope="col">Gestión</th>
                        </tr>

                        </thead>
                        <tbody>
                        <c:forEach items="${adminsList}" var="admin" varStatus="status">
                            <tr>
                                <td><c:out value="${status.count}"></c:out></td>
                                <td><c:out value="${admin.username}"></c:out></td>
                                <td><c:out value="${admin.email}"></c:out></td>
                                <td><c:out value="${admin.rol}"></c:out></td>
                                <td> <a class="btn btn-primary" href="getAdmin?id_admins=${admin.id_admins}"
                                        role="button">Editar</a>

                                    <a class="btn btn-danger btn-small"
                                       data-bs-toggle="modal" data-bs-target="#deleteAdmin-${admin.id_admins}"
                                    >Eliminar</a>

                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>

                    </table>

                </div>



                <!-- aqui empieza el modal-->
                <!-- Modal -->
                <c:forEach items="${adminsList}" var="admin" varStatus="status">
                <div class="modal fade" id="deleteAdmin-${admin.id_admins}" tabindex="-1" aria-labelledby="deleteAdminLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form method="post" action="deleteAdmin">
                                <input type="hidden" name="id_admins" id="id_admins" value="${admin.id_admins}"/>
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deleteAdmintLabel">Confirmar Eliminación</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    ¿Deseas eliminar a:
                                    <c:out value="${admin.username}"></c:out>?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                    <button type="submit" class="btn btn-primary">Confirmar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                </c:forEach>

                <!-- Modal -->

                <!-- aqui termina el modal-->


                <!-- /*
                    ////////////////////////////////////////////////////
                    Empieza paginacion
                    ////////////////////////////////////////////////////
                */ -->
                <div class="row" id="centrado">
                    <div class="col col-lg-8 col-sm-12 col-12 p-2">
                        Mostrando 2 de 10 resultados
                    </div>


                    <div class="col col-lg-1">
                        <a href="#" style="color: #002f61 ;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                 class="bi bi-arrow-left-square-fill" viewBox="0 0 16 16">
                                <path
                                        d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1z" />
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
                                <path
                                        d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z" />
                            </svg>

                        </a>

                    </div>
            </div>




        </main>
    </div>


</div>



<!-- **************************************************************AQUI TERMINA LA VISTA***********************************************************  -->
<%@include file="/WEB-INF/administrator/templateAdmin/linksScripts.jsp"%>
<%@include file="/template/footer.jsp"%>

</body>
</html>

<% }else  if (email != null && username !=null && rol==2){

    request.getRequestDispatcher("../../products/indexProducts.jsp").forward(request,response);

}else{
    //  System.out.println("No hay sesión iniciada!");
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}%>
