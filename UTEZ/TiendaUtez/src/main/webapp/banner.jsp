<%@ page import="utez.tienda.tiendautez.products.gestion.model.ProductBean" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/assets/bootstrap-5.2.0/bootstrap.min.css" rel="stylesheet"  crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icon@1.4.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/cssOriginal/estilos.css">
    <title>Index</title>
</head>
<body>

<%        //Listamos todos los productos
    List<ProductBean> products= (List<ProductBean>) request.getAttribute("productos");
    System.out.println(products.size());

    int idCategory = (int) request.getAttribute("idbanner");
    System.out.println(idCategory);

%>



<%@include file="/productsUser/templateUser/navarUser.jsp"%>



<!-- /*
////////////////////////////////////////////////////
                  Empieza pagina
////////////////////////////////////////////////////
*/ -->

<
<!-- fin carrusel -->

<!-- w=tamaño que abarca el texto   mx=posicion del texto -->
<div class="p-3 rounded rounded-3" id="fondo">
    <div id="fondo-blanco" class="rounded p-4 shadow">
        <!-- inicio categoria cuadros  -->

        <!-- El fondo blanco -->
        <main class="container-fluid">
            <!-- Contenedor principal-->
            <h1 id="titulo" class=" text-center">Productos</h1>

            <div class="container mt-3">
                <div class="ml-5">
                    <div class="row  d-flex justify-content-lg-start justify-content-md-between ">



                        <% for (ProductBean produc: products) {  //Lista general de los productos%>

                        <% if (produc.getStatus()==1 && produc.getDelete()==0 && produc.getOffers_id_offers()==idCategory) {%>



                        <div class="col-12 col-lg-3 col-md-5 d-flex justify-content-center my-2    ">
                            <a href="ProductServletUser?accion=getProduc&id=<%= produc.getId_products() %>" class="card position-relative text-decoration-none bordes shadow" style="max-width: 277.84px;">
                                <!-- Iteam de oferta -->
                                <% if (produc.getOffers_id_offers()!=0) {%>
                                <span class="position-absolute  badge rounded-1  m-2 px-3 bg-success">Oferta</span>
                                <%}                                %>
                                <!-- imagen del producto -->

                                <img width="240px" height="240px" src="data:image/jpeg;base64, <%= produc.getImageToShow()%> "  alt="Imagen<%= produc.getName()%>" class="card-img-top bordes">

                                <div class="card-body">
                                    <h2 class="card-title fs-5"><%= produc.getName()%></h2>

                                    <h3 class="fs-6 my-3"><%= produc.getCombinations().get(0).getPrice() %>..... </h3>

                                    <p class="card-text text-secondary">
                                        <%= produc.getDescription()%>
                                    </p>

                                </div>
                                <!-- precio -->
                            </a>
                        </div>

                        <%}%>

                        <%} %>

                    </div>
                </div>
            </div>

    </main>
</div>
</div>




<!-- /*
    ////////////////////////////////////////////////////
           pie de pagina
    ////////////////////////////////////////////////////
    */ -->






<script src="${pageContext.request.contextPath}/assets/bootstrap-5.2.0/js/bootstrap.bundle.min.js" ></script>
<footer class="w-100 d-flex align-items justify-content-center flex-wrap"
        id="fondo" >
    <p class="fs-5 px-3 pt-3"></p>
    <div class="d-flex align-items justify-content-center" id="fondo">
        <img src="${pageContext.request.contextPath}/assets/images/pie_texto.png" width="60%" alt="" />
    </div>
</footer>


</body>

</html>

