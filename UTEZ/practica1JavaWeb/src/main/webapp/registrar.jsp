<%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 07/07/2022
  Time: 04:51 a. m.
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
<body>
<h1>Registrar un usuario</h1>
<form action="ServletSesion" method="post">
    <label for="">Nombre:</label>
    <input type="text" name="name"/>
    <label for="">Usuario:</label>
    <input type="text" name="user"/>
    <label for="">Password:</label>
    <input type="password" name="pass"/>
    <input type="hidden" value="registrar" name="accion">
    <input type="submit" value="Registrar User"/>
</form>
<h3><a href="menuprincipal.jsp"> Regresar </a></h3>
</body>
</html>
<% }else{
    System.out.println("No hay sesión iniciada!");
    request.getRequestDispatcher("index.jsp").forward(request,response);

}
%>
