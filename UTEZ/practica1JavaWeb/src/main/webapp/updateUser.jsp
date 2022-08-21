<%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 13/07/2022
  Time: 06:18 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String user=(String)(session.getAttribute("user"));
  String pass=(String)(session.getAttribute("pass"));
  if(user != null && pass !=null){
    System.out.println("sesión: usuario: " + user + " pass: " +pass);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="ServletSesion" method="post">
  <fieldset>
    <legend>Actualización de usuario</legend>
    <p><label>Nombre y apellidos:</label> <input type="text" name="name" value="${person.nombre}"/></p>
    <p><label>Usuario:</label> <input type="text" name="user" value="${person.user}"/></p>
    <p><label>Contraseña:</label> <input type="text" name="pass" value="${person.pass}"/></p>
    <input type="hidden" value="actualizar" name="accion"/>
    <input type="hidden" name="id" value="${person.id}"/>
    <input type="submit" value="Actualizar User"/>
  </fieldset>
</form>
<h3><a href="menuprincipal.jsp"> Regresar </a></h3>
</body>
</html>
<% }else{
  System.out.println("No hay sesión iniciada!");
  request.getRequestDispatcher("index.jsp").forward(request,response);

  }
%>