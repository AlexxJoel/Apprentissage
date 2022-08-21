<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 31/07/2022
  Time: 12:10 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <title>Administradores</title>
</head>

<body>
<section class="vh-100" style="background-color: #b6b9bd;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">

                <div class="row">
                    <div class="col-6">
                        <button id="cerrarSesiom" class="btn btn-danger btn-block"> Cerrar sesión </button>
                    </div>
                    <div class="col-6">
                        <a href="ServletAlerts?done=addAdmin"  class="btn btn-success btn-block"> Añadir </a>
                    </div>



                </div>


                <table class="table bg-light">

                    <tr>

                        <th>Usuario</th>

                        <th>Correo</th>

                        <th>Acciones</th>

                    </tr>
                    <c:forEach items="${admins}" var="admin" varStatus="status">
                    <tr>

                        <td>${admin.user}</td>

                        <td>${admin.correo}</td>

                        <td><a href="#" class="btn btn-primary"> Editar </a> </td>
                        <td><a href="#" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> Eliminar </a> </td>

                    </tr>
                    </c:forEach>


                </table>
            </div>
            <!-- ///////////////////////////////////////////////////////////////////
            INICIO DE MODAL
            ////////////////////////////////////////////////////////////////////////-->
            <div class="modal fade " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class=" modal-dialog modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            ...
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Eliminar :)</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ///////////////////////////////////////////////////////////////////
INICIO DE MODAL
////////////////////////////////////////////////////////////////////////-->

        </div>
    </div>
    </div>
</section>
<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

<script>

    $(document).ready(function(){


        $("#cerrarSesiom").click(()=>{

            $.post("ServletAdmin", { accion: "cerrarSesion"})
                .done(function (data) {
                    console.log(data)
                    pasdato=data;
                    if (pasdato !== "") {
                        Swal.fire({
                            icon: 'success',
                            title: 'Sesión cerrada ...',
                            text: 'Adios, ' + data + '!',
                            width: '40%',
                            allowOutsideClick: false
                        }).then((result) => {
                            if (result.isConfirmed ) {
                                window.location.href = "ServletAlerts?done=login";
                            }
                        })//Fin dulce alerta
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'No se puede cerrar sesion!',
                            width: '40%',
                            allowOutsideClick: false,

                        })
                    }
                });//Fin done
        })

        //Fin Jquery
    });
</script>

</body>

</html>
