<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <jsp:include page="../../template/header.jsp"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/login/fonts/icomoon/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/login/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/login/css/styles.css">    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/login/css/bootstrap.min.css">    <!-- Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/login/css/style.css">



    <title>Login </title>
  </head>
  <body>

  <%
    String nombre = request.getParameter("name");
    String rol = request.getParameter("rol");
    String fallo = request.getParameter("fail");
  %>

  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6 order-md-2">
          <img src="${pageContext.request.contextPath}/assets/images/logo.svg" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <h3>Iniciar <strong> Sesión</strong></h3>
              <p class="mb-4">Acceder a gestionar la app</p>
            </div>
            <form action="AdminServlet" method="post">
              <div class="form-group first">
                <label for="username">email</label>
                <input type="email" class="form-control" id="username" name="email">

              </div>
              <div class="form-group last mb-4">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="password" name="password">
                
              </div>
              <button type="submit" id="logoo" value="validarAdmin" name="accionPost" class="btn text-white btn-block btn-primary">Iniciar sesión</button>


              
              <div class="social-login mt-3">
                <a href="#" class="facebook">
                  <span class="icon-facebook mr-3"></span> 
                </a>
                <a href="#" class="twitter">
                  <span class="icon-twitter mr-3"></span> 
                </a>
                <a href="#" class="google">
                  <span class="icon-google mr-3"></span> 
                </a>
              </div>
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>
  <script>
    $(document).ready(()=>{
      <% if (nombre!=null && fallo==null){ %>
       Swal.fire({
          icon: 'success',
          title: 'Bienvenido',
          text:"Hola, <%= nombre.toUpperCase() %>",
          showConfirmButton: false,
          timer: 1000,
       }).then(() => {
         window.location.href = "AdminServlet?accion=acceder&rol=<%=rol%>"
       })
      <% }else if (fallo!=null && nombre==null){%>
          Swal.fire({
              icon: 'error',
              title: 'Fallo!',
              text:" <%= fallo %>",
          showConfirmButton: false,
                  timer: 1500,
        })
     <%}%>
    })
  </script>

  <script src="${pageContext.request.contextPath}/assets/login/js/jquery-3.3.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/login/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/login/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/login/js/main.js"></script>


  </body>
</html>