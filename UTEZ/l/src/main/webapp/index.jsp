<%@ page import="utez.tienda.tiendautez.products.gestion.model.ProductBean" %>
<%@ page import="java.util.List" %>
<%@ page import="utez.tienda.tiendautez.products.gestion.model.CombinationPDBean" %>
<%@ page import="utez.tienda.tiendautez.category.model.CategoryBean" %>
<%@ page import="utez.tienda.tiendautez.offers.model.BeanOffer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%        //Listamos todos los productos
    List<ProductBean> products= (List<ProductBean>) request.getAttribute("productos");
    List<CategoryBean> categories = (List<CategoryBean>) request.getAttribute("listCategoris");
    List<BeanOffer> offers = (List<BeanOffer>) request.getAttribute("listoffer");

%>

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
<%@include file="/productsUser/templateUser/navarUser.jsp"%>



<!-- /*
////////////////////////////////////////////////////
                  Empieza pagina
////////////////////////////////////////////////////
*/ -->

<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">


    <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="5900">
            <a href="ProductServletUser?accion=getCategoriesproduct&idbanner=<%= offers.get(0).getId_offers() %>">
                <img height="280px " src="data:banner/jpeg;base64, <%= offers.get(0).getBanner() %>"   class="d-block w-100" alt="...">

            </a>
        </div>


        <%
            for (int i = 1; i < offers.size(); i++) {%>


        <div class="carousel-item" data-bs-interval="5900">
            <a href="ProductServletUser?accion=getCategoriesproduct&idbanner=<%= offers.get(i).getId_offers() %>">
            <img height="280px " src="data:banner/jpeg;base64, <%= offers.get(i).getBanner() %>"   class="d-block w-100" alt="...">
            </a>
        </div>

        <%}
        %>

    </div>



    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<!-- fin carrusel -->

<!-- w=tamaño que abarca el texto   mx=posicion del texto -->
<div class="p-3 rounded rounded-3" id="fondo">
    <div id="fondo-blanco" class="rounded p-4 shadow">
        <!-- inicio categoria cuadros  -->
        <div class="container mb-3">
            <div class="d-lg-block collapse " id="categoriasProducts">
                <div class="d-flex flex-wrap justify-content-md-around justify-content-center ">
                    <% for (CategoryBean cbean: categories) {%>

                    <a href="<%=cbean.getId_category()%>" class="btn my-1 mx-1 mx-md-0 p-3 px-5 btn-primary text-decoration-none text-white m-sm-3"><%=cbean.getName()%></a>

                    <% } %>
                   </div>
            </div>
        </div>
        <!-- El fondo blanco -->
        <main class="container-fluid">
            <!-- Contenedor principal-->
            <h1 id="titulo" class=" text-center">Productos</h1>

            <div class="container mt-3">
                <div class="ml-5">
                    <div class="row  d-flex justify-content-lg-start justify-content-md-between ">



                        <% for (ProductBean produc: products) {  //Lista general de los productos%>

                        <% if (produc.getStatus()==1 && produc.getDelete()==0) {%>



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

