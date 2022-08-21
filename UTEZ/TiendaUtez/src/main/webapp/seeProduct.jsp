<%@ page import="utez.tienda.tiendautez.products.gestion.model.ProductBean" %>
<%@ page import="java.util.List" %>
<%@ page import="utez.tienda.tiendautez.products.gestion.model.CombinationPDBean" %>
<%@ page import="utez.tienda.tiendautez.images.model.ImagesBean" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%        //Listamos todos los productos
    ProductBean product = (ProductBean) request.getAttribute("product");
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


    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/cssOriginal/styles.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <title>Index</title>
</head>
<body>
<%@include file="/productsUser/templateUser/navarUser.jsp"%>



<!-- /*
////////////////////////////////////////////////////
                  Empieza pagina
////////////////////////////////////////////////////
*/ -->


<!-- w=tamaño que abarca el texto   mx=posicion del texto -->
<div class="p-3 rounded rounded-3" id="fondo">
    <div id="fondo-blanco" class="rounded p-4 shadow">
        <!-- El fondo blanco -->
        <main class="container-fluid">
            <!-- Contenedor principal-->

                <div class="container">
                    <div class="card my-3 shadow">
                        <div class="card border-2 m-md-3">
                            <div class="card-body">
                                <div class="row">
                                    <!-- Parte izquierda -->
                                    <div class="col-lg-5 col-sm-12">
                                        <!-- comienzo con contenido -->
                                        <div class="card p-4 pt-5"  style="width: 100%; height: 100% ;" >
                                            <div id="carouselExampleInterval sticky-top" class=" mt-5 carousel slide" data-bs-ride="carousel">
                                                <div class="carousel-inner">


                                                    <div class="carousel-item active" data-bs-interval="3000">
                                                        <img src="data:image/jpeg;base64, <%= product.getImageToShow()%> " class="img-fluid" alt="Imagen<%= product.getName()%>">
                                                        <div class="carousel-caption d-none d-md-block">

                                                        </div>
                                                    </div>

                                                    <% for (ImagesBean images: product.getImagesSecondaries()){
                                                        //System.out.println(images.getImages());
                                                    %>
                                                    <div class="carousel-item" data-bs-interval="1900">
                                                        <img src="data:image/jpeg;base64,<%= images.getImages()%> "  class="d-block w-100" alt="ImagesSecondary<%= images.getImages()%>">
                                                        <div class="carousel-caption d-none d-md-block">

                                                        </div>
                                                    </div>
                                                    <%}%>

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

                                        </div>

                                        <!-- <img width="450px" height="450px"> -->

                                    </div>
                                    <!-- //---------------------------------------------------- -->
                                    <!-- parte derecha -->
                                    <div class="col-lg-7 col-sm-12">

                                        <input type="hidden" class="form-control border-info" id="tipoProducto" disabled value="<%= product.getType()%>">

                                        <!-- comienzo con contenido -->
                                        <div class="row ">
                                            <div class="col-12">
                                                <p class="fw-bold form-label text-start display-6"><%= product.getName()%></p>
                                            </div>
                                        </div>

                                        <div class="row my-3">
                                            <div class="col-12">
                                                <div class="fw-bold form-label "><%= product.getDescription()%></div>
                                            </div>
                                        </div>







                                        <div class="row my-2">
                                            <div class="col-12">
                                                <section id="compuesto">
                                                    <div id="formCompu">

                                                        <% List<CombinationPDBean> combination = product.getCombinations(); //Lista de las combinaciones de productos
                                                            String color="";
                                                            for (CombinationPDBean combina:combination) { //Recorro las combination

                                                                if (!combina.getColor().equalsIgnoreCase(color)){
                                                                    color=combina.getColor();
                                                        %>
                                                        <div class="row" id="newRow<%= product.getId_products()%>">
                                                            <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3  " >
                                                                <label class="input-text h5 text-uppercase" >Color</label>
                                                                <select class="form-select "  name="colorProductos" >
                                                                    <option value="<%=combina.getColor()%>"><%=combina.getColor()%></option>
                                                                    <option value="Azul rey">Azul rey</option>
                                                                    <option value="Blanco">Blanco</option>
                                                                    <option value="Negro">Negro</option>
                                                                </select>
                                                            </div>

                                                            <h6>Unidades por talla</h6>

                                                            <div class=" col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3 rounded-bottom bg-light p-2">
                                                                <div class="row">
                                                                    <!-- ----------------------cHICA---------------- -->
                                                                    <%for (CombinationPDBean combinadiv:combination) {%>
                                                                    <% if (combinadiv.getSize().equalsIgnoreCase("CH") && combinadiv.getColor().equalsIgnoreCase(color)){%>

                                                                    <div class="col-6 col-lg-3">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <label class="form-label">CH</label>
                                                                                <input type="number" class="form-control" name="chica" value="<%= combinadiv.getPieces()%>">

                                                                            </div>

                                                                            <div class="col-12">
                                                                                <label  class="form-label">Precio</label>
                                                                                <div class="input-group mb-3 ">
                                                                                    <span class="input-group-text">$</span>
                                                                                    <input type="number" class="form-control" name="chicaPrecio" value="<%= combinadiv.getPrice()%>">

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- ----------------Fin chica--------------------------- -->
                                                                    <% } else if (combinadiv.getSize().equalsIgnoreCase("MD") && combinadiv.getColor().equalsIgnoreCase(color)) {%>

                                                                    <!-- ----------------Mediana -------------------------- -->
                                                                    <div class="col-6 col-lg-3">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <label  class="form-label">MD</label>
                                                                                <input type="number" class="form-control" name="mediana" value="<%= combinadiv.getPieces()%>">

                                                                            </div>

                                                                            <div class="col-12">
                                                                                <label  class="form-label">Precio</label>
                                                                                <div class="input-group mb-3 ">
                                                                                    <span class="input-group-text">$</span>
                                                                                    <input type="number" class="form-control" name="medianaPrecio" value="<%= combinadiv.getPrice()%>">

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- ----------------Fin mediana --------------------------- -->
                                                                    <%} else if (combinadiv.getSize().equalsIgnoreCase("G") && combinadiv.getColor().equalsIgnoreCase(color)) {%>

                                                                    <!-- ----------------Grande--------------------------- -->
                                                                    <div class="col-6 col-lg-3">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <label  class="form-label">G</label>
                                                                                <input type="number" class="form-control" name="grande" value="<%= combinadiv.getPieces()%>" >

                                                                            </div>

                                                                            <div class="col-12">
                                                                                <label  class="form-label">Precio</label>
                                                                                <div class="input-group mb-3 ">
                                                                                    <span class="input-group-text">$</span>
                                                                                    <input type="number" class="form-control" name="grandePrecio"  value="<%= combinadiv.getPrice()%>">

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- ----------------Fin Grande--------------------------- -->
                                                                    <%} else if (combinadiv.getSize().equalsIgnoreCase("XG") && combinadiv.getColor().equalsIgnoreCase(color)) {%>

                                                                    <!-- ----------------Extra grande-------------------------- -->
                                                                    <div class="col-6 col-lg-3">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <label class="form-label">XG</label>
                                                                                <input type="number" class="form-control" name="xgrande" value="<%= combinadiv.getPieces()%>">

                                                                            </div>

                                                                            <div class="col-12">
                                                                                <label class="form-label">Precio</label>
                                                                                <div class="input-group mb-3 ">
                                                                                    <span class="input-group-text">$</span>
                                                                                    <input type="number" class="form-control" name="xgrandePrecio" value="<%= combinadiv.getPrice()%>" >

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- ----------------Fin ExtraGrande--------------------------- -->
                                                                    <% } %>
                                                                    <% } %>
                                                                </div>
                                                            </div>

                                                            <hr>


                                                        </div>



                                                        <%}
                                                        }%>
                                                    </div>

                                                </section>

                                                <!-- --------------------Fin Productios generale s -------------- -->



                                                <!-- ---------------- Inicio producto simple-------------------- -->


                                                <section  id="simple">
                                                    <div class="row" >
                                                        <div class="col-12 col-lg-11 col-md-12  p-lg-3  px-md-4 p-2  mb-3 rounded bg-light  " >
                                                            <label class="input-text h5 text-uppercase" >Color</label>
                                                            <select class="form-select " id="colorSimple"   >

                                                                <option value="<%= product.getCombinations().get(0).getColor() %>"><%= product.getCombinations().get(0).getColor() %></option>
                                                                <option value="Azul rey">Azul rey</option>
                                                                <option value="Blanco">Blanco</option>
                                                                <option value="Negro">Negro</option>
                                                            </select>

                                                            <label class="input-text h5 text-uppercase" >Cantidad</label>
                                                            <input type="text" class="form-control"  id="cantidadSimple" value="<%= product.getCombinations().get(0).getPieces() %>" >

                                                            <label class="input-text h5 text-uppercase" >Precio</label>
                                                            <input type="text" class="form-control" id="precioSimple"  value="<%= product.getCombinations().get(0).getPrice() %>"  >
                                                        </div>

                                                    </div>
                                                </section>

                                            </div>
                                        </div>













                                        <div class="row my-2 ">
                                            <div class="col-12">

                                                <div id="carouselExampleIntervala" class=" mt-5 carousel slide" data-bs-ride="carousel">
                                                    <div class="carousel-inner">


                                                        <div class="carousel-item active" data-bs-interval="3000">
                                                            <p>shbhubhbgyusbyugs</p>
                                                            <div class="carousel-caption d-none d-md-block">

                                                            </div>
                                                        </div>


                                                        <div class="carousel-item" data-bs-interval="1900">
                                                            <p>kn sbhjshjsbhbhshbuss</p>
                                                            <div class="carousel-caption d-none d-md-block">

                                                            </div>
                                                        </div>


                                                    </div>
                                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIntervala" data-bs-slide="prev">
                                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                        <span class="visually-hidden">Previous</span>
                                                    </button>
                                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIntervala" data-bs-slide="next">
                                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                        <span class="visually-hidden">Next</span>
                                                    </button>
                                                </div>

                                            </div>

                                            </div>
                                        </div>







                                    </div>
                                </div>
                                <!-- fin de fila  -->
                            </div>
                        </div>
                        <hr >

                        <div class="card-body">

                            <h3 class="text-center fst-italic mb-4">Descripción larga</h3>
                            <div class="bordes ">
                                <%= product.getDescriptionLong() %>
                            </div>



                        </div>
                    </div>
                </div>

                <!-- Va el cuerpo princiapal -->
                <!-- <article> -->
                <!-- para mostar un articulo -->
                <!-- <section> -->
                <!-- para dividir los articulos -->
                <!--         </section>
                          </article> -->


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
<script>

    $(()=> {



        //Inicio query

        var listTipoProduct = document.querySelector("#tipoProducto");

        var formSimple = document.querySelector("#simple");
        var formCompuesto = document.querySelector("#compuesto");
        var formCompuestoMas = document.querySelector("#new");


        var formCompuColores = document.querySelector("#formCompu");
        var filaColors = document.querySelector("#filaColores");
        var btnAddColor = document.querySelector("#addColor");

        //Obtencion de formulario (iteasm)


        var listTipoProductValor = document.querySelector("#tipoProducto").value;
        //console.log(listTipoProductValor);
        if (listTipoProductValor === 'Compuesto') {
            formSimple.style.display = 'none';
            formCompuesto.style.display = 'block';
        } else {
            formCompuesto.style.display = 'none';
            formSimple.style.display = 'block';
        }
    })
</script>

</html>

