<%@ page import="utez.tienda.tiendautez.products.gestion.model.ProductBean" %>
<%@ page import="java.util.List" %>
<%@ page import="utez.tienda.tiendautez.products.gestion.model.CombinationPDBean" %><%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 14/08/2022
  Time: 02:41 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    if(email != null && username !=null ){
        System.out.println(" pass: " +username + " rol "+ rol);


        List<ProductBean> products= (List<ProductBean>) request.getAttribute("productos");
        int id_product=0;
%>


<html>
<head>
    <title>GESTION PRODUCTOS</title>
    <%@include file="/template/header.jsp"%>

</head>
<body>
<%@include file="/WEB-INF/administrator/templateAdmin/navbar.jsp"%>


<div class="p-3 rounded rounded-3" id="fondo">
    <div id="fondo-blanco" class="rounded p-4 shadow">
        <main class="container-fluid">

            <div class="row ">
                <div class="col col-lg-3 col-md-3 col-sm-12 col-12  p-2">
                    <h1 id="titulo">Inventario Halcón</h1>
                </div>
                <div class="col col-lg-7 col-md-9 col-sm-12 col-12 p-2">
                    <form class="d-flex align-items justify-content-center">
                        <input class="form-control me-2" type="search" placeholder="Busca" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Buscar</button>
                    </form>

                </div>
                <div class="col col-lg-2 col-md-4 col-sm-12 col-12 p-2">
                    <a class="btn btn-secondary" href="ProductServlet?accion=createProducts" role="button">Nuevo producto</a>
                </div>
            </div>

            <!--------------------------------------------------------------------------------------------------->

            <div class="row">
                <div class="col col-12">
                    <table class="table" id="tabla">
                        <thead>
                        <tr class="text-light">
                            <th scope="col">Nombre</th>
                            <th scope="col">Oferta </th>
                            <th scope="col">Categoría </th>
                            <th scope="col">Estatus </th>
                            <th scope="col">Acciones </th>
                        </tr>

                        </thead>
                        <tbody>
                        <% for (ProductBean produc: products) {  //Lista general de los productos
                            String offer = produc.getOffers_id_offers()==0?"No aplica":produc.getOffer().getName();
                            String status = produc.getStatus()==0?"No publicado":"Publicado";
                        %>
                        <tr>
                            <td><%= produc.getName()%></td>
                            <td><%= produc.getCategory().getName()%></td>
                            <td><%= offer%></td>
                            <td><%= status%></td>

                            <td>
                                <a class="btn btn-outline-warning" data-bs-toggle="modal" href="#exampleModalToggle<%=produc.getId_products()%>" role="button">Ver <i class="fa-solid fa-plus"></i></a>
                                <a class="btn btn-primary " href="" role="button"><i class="fa-solid fa-file-pen"></i></a>

                                <% if (produc.getStatus()==0){ %>
                                    <a class="btn btn-success" href="ProductServlet?accion=updateStatus&id=<%=produc.getId_products()%>&status=1"   role="button"><i class="fa-solid fa-circle-arrow-up"></i></a>
                                <%}else{%>
                                    <a class="btn btn-danger" href="ProductServlet?accion=updateStatus&id=<%=produc.getId_products()%>&status=0"   role="button"><i class="fa-solid fa-circle-arrow-down"></i></a>
                               <%}%>

                                <a class="btn btn-dark" href=""   role="button"> <i class="fa-solid fa-image"></i></a>
                                <a class="btn btn-outline-danger delete" href="ProductServlet?accion=dropRowLogic&id=<%= produc.getId_products() %>&delete=1"   role="button"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>

                        <% }%>

                        </tbody>
                    </table>

                </div>
            </div>

            <!--------------------------------------------------------------------------------------------------->
            <div class="row" id="centrado">
                <div class="col col-lg-8 col-sm-12 col-12 p-2">
                    Mostrando 1 de 10 resultados
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


<!--....................................Modal para visualizar ------------------------------->
<%

    for (ProductBean produc: products) {  //Lista general de los productos

%>
<div class="modal fade" id="exampleModalToggle<%=produc.getId_products()%>" aria-labelledby="exampleModalToggleLabel" tabindex="-1" aria-hidden="true" style="display: none;">
    <div class=" modal-dialog modal-dialog-scrollable modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalToggleLabel">Combinaciones</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <% List<CombinationPDBean> combination = produc.getCombinations(); //Lista de las combinaciones de productos
                    String color="";
                    for (CombinationPDBean combina:combination) { //Recorro las combination

                        if (!combina.getColor().equalsIgnoreCase(color)){
                            color=combina.getColor();
               %>

                <div class="row">
                    <div class="col-12">
                        <p class="text-center h5 alert alert-success m-1 p-1"><%=combina.getColor().toUpperCase()%></p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-4">
                        <p class="text-center  border-bottom border-primary  m-1 mb-0">TAMAÑO</p>
                    </div>
                    <div class="col-4">
                        <p class="text-center border-bottom  border-primary  m-1 mb-0">PRECIO</p>
                    </div>
                    <div class="col-4">
                        <p class="text-center border-bottom border-primary  m-1 mb-0">PIEZAS</p>
                    </div>
                </div>

                <% }%>

                <div class="row">
                    <div class="col-4">
                        <p class="text-center m-0 p-0"><%= combina.getSize().toUpperCase() %></p>
                    </div>
                    <div class="col-4">
                        <p class="text-center m-0 p-0 "><%= combina.getPrice() %></p>
                    </div>
                    <div class="col-4">
                        <p class="text-center  m-0 p-0"><%= combina.getPieces() %></p>
                    </div>
                </div>

                <%

                    } %>

            </div>
            <div class="modal-footer p-1">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<%

    }
%>

<%@include file="/WEB-INF/administrator/templateAdmin/linksScripts.jsp"%>
<%@include file="/template/footer.jsp"%>
<script>
    $(()=> {
        $('.delete').click(function(){
            Swal.fire({
                icon:'question',
                text: '¿Seguro quieres eliminar temporalmente?',
                showCancelButton: true,
                confirmButtonText: 'Seguro',
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire({
                        icon: 'success',
                        showConfirmButton: true,
                    })
                }

            })
        });
    })
</script>

</body>
</html>

<% }else{
    //  System.out.println("No hay sesión iniciada!");
    request.getRequestDispatcher("AdminServlet?accion=login").forward(request,response);
}%>

