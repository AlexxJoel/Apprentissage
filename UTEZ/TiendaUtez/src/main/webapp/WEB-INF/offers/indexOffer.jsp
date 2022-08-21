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


<html>
<head>
    <title>GESTION ADMINISTRADORES</title>
    <%@include file="/template/header.jsp"%>
</head>
<body>
<%@include file="../administrator/templateAdmin/navbar.jsp"%>
<!-- *********************************************************AQUI EMPIEZA LA VISTA******************************************************  -->
<!-- /*
////////////////////////////////////////////////////
              Empieza pagina
////////////////////////////////////////////////////
*/ -->
<!-- w=tamaño que abarca el texto   mx=posicion del texto -->

<div id="fondo-blanco" class="rounded p-4 shadow">
    <!-- El fondo blanco -->
    <main class="container-fluid">
        <!-- Contenedor principal-->
        <div class="row ">
            <div class="col col-lg-3 col-md-3 col-sm-12 col-12  p-2">
                <h1 id="titulo">Ofertas</h1>

            </div>
            <div class="col col-lg-7 col-md-9 col-sm-12 col-12 p-2">
                <form class="d-flex align-items justify-content-center">
                    <input class="form-control me-2" type="search" placeholder="Busca" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Buscar</button>
                </form>

            </div>
            <div class="col col-lg-2 col-md-4 col-sm-12 col-12 p-2">
                <a class="btn btn-secondary" href="createOffer" role="button"><i class="fa-regular fa-circle-plus">  Agregar oferta</i></a>


            </div>

        </div>
        <!-- /*
////////////////////////////////////////////////////
              Empieza tabla
////////////////////////////////////////////////////
*/ -->

        <div class="row">
            <div class="col col-12">
                <table class="table" id="tabla">
                    <thead>
                    <tr class="text-light">
                        <th scope="col"> Id</th>
                        <th scope="col"> Nombre de la oferta</th>
                        <th scope="col"> Imagen</th>
                        <th scope="col"> Desc %</th>
                        <th scope="col"> Fecha de inicio</th>
                        <th scope="col"> Fecha de fin</th>
                        <th scope="col"> Gestión</th>
                    </tr>

                    </thead>

                    <tbody>
                    <c:forEach items="${offerList}" var="offer" varStatus="status">
                        <tr>
                            <td><c:out value="${status.count}"></c:out></td>
                            <td><c:out value="${offer.name}"></c:out></td>
                            <td><img src="data:banner/jpeg;base64, ${offer.banner}" style="width: 80px;"> </td>
                            <td><c:out value="${offer.discount}"></c:out></td>
                            <td><c:out value="${offer.start_date}"></c:out></td>
                            <td><c:out value="${offer.end_date}"></c:out></td>
                            <td>
                                <a class="btn btn-primary" href="getOffer?id_offers=${offer.id_offers}"
                                   role="button">Editar</a>
                                <a class="btn btn-danger btn-small"
                                   data-bs-toggle="modal" data-bs-target="#deleteOffer-${offer.id_offers}"
                                >Eliminar</a>
                                <a class="btn btn-danger btn-small"
                                   data-bs-toggle="modal" data-bs-target="#indexBanner-${offer.id_offers}"
                                >Gestionar imagen</a>

                                <a class="btn btn-primary" href="addOffer?id_offers=${offer.id_offers}"
                                   role="button">Agregar productos a oferta</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <!-- aqui empieza el modal-->
            <!-- Modal  para eliminar una oferta-->
            <c:forEach items="${offerList}" var="offer" varStatus="status">
                <div class="modal fade" id="deleteOffer-${offer.id_offers}" tabindex="-1" aria-labelledby="deleteOfferLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form method="post" action="deleteOffer">
                                <input type="hidden" name="id_offers" id="id_offers" value="${offer.id_offers}"/>
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deleteOffertLabel">Confirmar Eliminación</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    ¿Deseas eliminar a la oferta:
                                    <c:out value="${offer.name}"></c:out>
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


            <!-- aqui empieza el modal-->
            <!-- Modal para gestionar/ver la imagen-->
            <c:forEach items="${offerList}" var="offer" varStatus="status">
                <div class="modal fade" id="indexBanner-${offer.id_offers}" tabindex="-1" aria-labelledby="indexBannerLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form method="post" action="indexBanner">
                                <input type="hidden" name="id_offers" id="id_offers" value="${offer.id_offers}"/>
                                <div class="modal-header">
                                    <h5 class="modal-title" id="indexBannerLabel">Confirmar Eliminación</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <table class="table" id="tabla">
                                        <thead>
                                            <tr class="text-light">
                                                <th scope="col">Imagen Actual</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td><img src="data:banner/jpeg;base64, ${offer.banner}" style="width: 80px;"> </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <a class="btn btn-danger btn-small"
                                       data-bs-toggle="modal" data-bs-target="#updateBanner-${offer.id_offers}"
                                    >Cambiar imagen</a>
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




            <!-- aqui empieza el modal-->
            <!-- Modal para actualizar la imagen-->
            <c:forEach items="${offerList}" var="offer" varStatus="status">
                <div class="modal fade" id="updateBanner-${offer.id_offers}" tabindex="-1" aria-labelledby="updateBannerLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form method="post" action="updateBanner" enctype="multipart/form-data">
                                <input type="hidden" name="id_offers" id="id_offers" value="${offer.id_offers}"/>
                                <div class="modal-header">
                                    <h5 class="modal-title" id="updateBannerLabel">Confirmar Eliminación</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form name="registerOffer" class="needs-validation" novalidate action="updateOffer" id="form" method="post" enctype="multipart/form-data">
                                        <div class="col col-lg-8 col-md-6 col-sm-12 col-12 mt-3">
                                            <div class="">
                                                <label for="banner" class="form-label">Small file input example</label>
                                                <input class="form-control form-control-lg" id="banner" name="banner" type="file" value="${offer.banner}">
                                                <div class="invalid-feedback">
                                                    Ingresa el nombre.
                                                </div>
                                                <div class="valid-feed ack">
                                                    ¡Buen nombre!
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row m-3 justify-content-md-center  text-center">
                                            <div class="col col-lg-4 col-12">
                                                <button class="btn  m-3" id="boton-azul" type="submit" style="background-color: #dc3545;">Guardar</button>
                                                <a class="btn btn-lg m-3 text-light" type="submbit" role="button"
                                                   style="background-color: #dc3545;">Cancelar</a>
                                            </div>

                                        </div>
                                    </form>
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

        </div>



    </main>




</div>















<!-- /*
////////////////////////////////////////////////////
                SERVICIOS
////////////////////////////////////////////////////
*/ -->



<!-- /*
////////////////////////////////////////////////////
                NOSOTROS
////////////////////////////////////////////////////
*/ -->


<!-- /*
////////////////////////////////////////////////////
         FONDO       FORMULARIO
////////////////////////////////////////////////////
*/ -->


<!-- /*
////////////////////////////////////////////////////
       FORMULARIO
////////////////////////////////////////////////////
*/ -->



<!--

/////////////////
-->
</div>

<!-- /*
    ////////////////////////////////////////////////////
           pie de pagina
    ////////////////////////////////////////////////////
    */ -->

<!-- **************************************************************AQUI TERMINA LA VISTA***********************************************************  -->


<%@include file="/template/footer.jsp"%>
<%@include file="../administrator/templateAdmin/linksScripts.jsp"%>
</body>
</html>
