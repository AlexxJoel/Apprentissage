<%@ page import="java.util.List" %>
<%@ page import="utez.tienda.tiendautez.administrator.model.AdminBean" %><%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 06/08/2022
  Time: 01:11 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=(String)(session.getAttribute("username"));
    String email=(String)(session.getAttribute("email"));
    Integer rol=(Integer)(session.getAttribute("rol"));

    if(email != null && username !=null && rol==1){
          System.out.println(" pass: " +username + " rol "+ rol);
%>


<html>
<head>
    <title>Administrador</title>
    <%@include file="../templateAdmin/header.jsp"%>
</head>
<body>
<header>
    <%@include file="../templateAdmin/navRoot.jsp"%>
</header>
<div id="fondo-blanco" class="rounded p-4 shadow">
    <!-- El fondo blanco -->
    <main class="container-fluid">
        <!-- Contenedor principal-->
        <section>
            <form action="post" class="" id="form" >
                <div class="row ">
                    <div class="col col-lg-12 col-md-12 col-sm-12 col-12  p-2">
                        <h1 id="titulo">Crear administrador</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-lg-4 col-md-6 col-sm-12 col-12 mt-2" id="grupo_usuario">
                        <label for="usuario" class="form-label fs-3">Usuario</label>
                        <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Halconcín ">
                    </div>
                    <div class="col col-lg-4 col-md-6 col-sm-12 col-12 mt-2">
                        <label for="correo" class="form-label fs-3">Correo</label>
                        <input type="email" class="form-control" id="correo" name="correo"
                               placeholder="halcon@utez.edu.mx" required>
                    </div>
                    <div class="col col-lg-4 col-md-6 col-sm-12 col-12 mt-2">
                        <label for="contraseña" class="form-label fs-3">Contraseña</label>
                        <input type="password" class="form-control" name="contra" required>
                    </div>
                    <div class="col col-lg-4 col-md-6 col-sm-12 col-12 mt-2">
                        <label for="concontraseña" class="form-label fs-3">Confirmar contraseña</label>
                        <input type="password" class="form-control " name="contra"  required>
                        <div id="user" class="invalid-tooltip">
                            Ambas contraseñas deben ser igual
                        </div>
                        <div id="msg" class="invalid-tooltip">
                            Ambas contraseñas deben ser igual
                        </div>
                    </div>
                </div>
                <div class="row m-3 justify-content-md-center  text-center">
                    <div class="col col-lg-4 col-12">
                        <button class="btn  m-2" id="boton-azul" type="submit">Guardar</button>
                        <button class="btn m-2 text-light" style="background-color: #20c997"
                                type="submit">Guardar y publicar</button>
                        <p class="warnings" id=""></p>
                    </div>
                </div>
            </form>
        </section>
    </main>
</div>

</body>
<%@include file="../templateAdmin/footer.jsp"%>
<%@include file="../templateAdmin/footerNoJS.jsp"%>
</html>


<% }else{
    //  System.out.println("No hay sesión iniciada!");
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}%>
