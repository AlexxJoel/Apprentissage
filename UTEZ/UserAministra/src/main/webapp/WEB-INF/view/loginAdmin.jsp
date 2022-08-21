<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 30/07/2022
  Time: 11:06 p. m.
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
    <jsp:include page="/WEB-INF/template/headerAdmin.jsp"/>

    <title>Login</title>
</head>
<body>
<section class="vh-100" style="background-color: #b6b9bd;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">
                        <form action="ServletAdmin" method="post" enctype="multipart/form-data">

                        <h3 class="mb-5">Sign in</h3>

                        <div class="form-outline mb-4">
                            <input type="email" id="email" class="form-control form-control-lg" required>
                            <label class="form-label">Email</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="pass" class="form-control form-control-lg" required>
                            <label class="form-label">Password</label>
                        </div>

                            <div class="form-outline mb-4">
                                <input type="file" name="image" class="form-control form-control-lg" >
                                <label class="form-label">Imagen</label>
                            </div>

                        <button class="btn btn-primary btn-lg btn-block" type="submit" id="entrar">Login</button>

                        <hr class="my-4">

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script>
    $(document).ready(function(){

        // Inicio jquery-------------------------------

        // $('') //Asi se obtiene un elemnto de html

        //Login

        //Neceitamos obtener email y password

        $('#entrar').click(()=>{


            var email =  $('#email').val()
            var pass  =  $('#pass').val()

            var pasdato
            if(email==="" || pass===""){
                const Toast = Swal.mixin({
                    toast: true,
                    position: 'bottom-end',
                    showConfirmButton: false,
                    timer: 2500,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.addEventListener('mouseenter', Swal.stopTimer)
                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                    }
                })

                Toast.fire({
                    icon: 'info',
                    title: 'Todos los campos deben estar llenos'
                })
            }else {
                //var nuevoArray = new Array(3)
                //nuevoArray[0]= pass
                //nuevoArray[1]= email
                //nuevoArray[2]= "iniciarSesion"

                var nuevoArray = new Array(2)
                var array = new Array(3)

                var compuesto = {password:"123",correo:"joel@GMAIL.COM",accion:"iniciarSesion"}

                nuevoArray[0] = JSON.stringify(compuesto)

                compuesto = {password:"2878973",correo:"joel@GMAIL.COM",accion:"odaaaaa"}

                nuevoArray[1] = JSON.stringify(compuesto)

                array[0] = "joel";
                array[1] = "19";
             //   const myJSON = JSON.stringify(nuevoArray);

                //$.post("ServletAdmin", {email: email, pass: pass, accion: "iniciarSesion"})
                $.post("ServletAdmin",{ 'json[]': nuevoArray,'array[]' :array})

            }
        });//Fin boton
        //Fin Jquey -----------------------------------
    });

</script>

</body>
</html>