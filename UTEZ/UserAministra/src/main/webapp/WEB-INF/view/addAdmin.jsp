<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 31/07/2022
  Time: 10:40 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>



  <title>Añadir admin!</title>
</head>

<body>
<section class="vh-100" style="background-color: #b6b9bd;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">

        <form action="ServletAdmin" method="post">
          <div>
            <label class="form-label">Usuario</label>
            <input name="user" type="text" class="form-control" >
          </div>
          <div>
            <label  class="form-label">Correo</label>
            <input type="email" name="correo" class="form-control" >
          </div>
          <div class="col-md-6 position-relative">
            <label  class="form-label">Contraseña</label>
            <input type="password" class="form-control" name="contra"  required>
          </div>


          <div class="col-md-6 position-relative">
            <label class="form-label">Confirmar contraseña</label>
            <input type="password" class="form-control" name="contra" required>
            <div  id="msg">
              Ambas contraseñas deben ser igual
            </div>
          </div>

          <div class="mt-5">
            <button name="accion" type="submit"  value="addAdmin" class="btn btn-primary"> Añadir </button> <a href="#" class="btn btn-outline-danger"> Regresar </a>
          </div>
        </form>
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

    var contra = $("input[name=contra]")
    $("#msg").css("display","none")


    var clave1="",clave2=""

    $(contra[0]).keyup(()=>{
      clave1 = contra[0].value
      revisar()
    });
    $(contra[1]).keyup(()=>{
      clave2 = contra[1].value
      revisar()
    });



    function revisar(){
      if(clave1!="" && clave2!==""){
        if (clave1==clave2) {
          $(contra).addClass("is-valid")
          $(contra).removeClass("is-invalid")
          $("#msg").removeClass("invalid-tooltip")
          $("#msg").css("display","none")
        } else {
          $("#msg").addClass("invalid-tooltip")
          $(contra).removeClass("is-valid")
          $(contra).addClass("is-invalid")
          $("#msg").css("display","block")
        }
      }else{
        $("#msg").removeClass("invalid-tooltip")
        $("#msg").css("display","none")
        $(contra).removeClass("is-valid")
      }
    }


    //Fin Jquery
  })
</script>

</body>

</html>