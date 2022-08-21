<%@ page import="mx.edu.utez.practica1javaweb.model.administration.person.beanPerson" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.edu.utez.practica1javaweb.service.administration.person.DaoPerson" %><%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 30/06/2022
  Time: 09:22 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String user=(String)(session.getAttribute("user"));
    String pass=(String)(session.getAttribute("pass"));
    if(user != null && pass !=null){
        System.out.println("sesión: usuario: " + user + " pass: " +pass);

%>
<html>
<head>
    <title>Bienvenido Admin</title>
</head>
<body>
<h1>Bienvenido Admin</h1>
<h3><a href="registrar.jsp"> Registrar </a></h3>
<h3><a href="getPersons"> Consultar </a></h3>
<h3><a href="cerrarSesion"> Cerrar Sesión </a></h3>


<div class="${clase}" role="alert">
<h4>${mensaje}</h4>
</div>




</body>
</html>
<% }else{
    System.out.println("No hay sesión iniciada!");
    request.getRequestDispatcher("index.jsp").forward(request,response);

}
%>