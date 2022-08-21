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
    <title>Usuarios del sistema</title>
</head>
<body>

<h3><a href="menuprincipal.jsp"> Regresar </a></h3>


<div class="${clase}" role="alert">
<h4>${mensaje}</h4>
</div>

<table  border="1">
    <thead>
    <tr>
        <th>#</th>
        <th>Nombre</th>
        <th>User</th>
        <th>Pass</th>
        <th>Acción</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="person" items="${listPersons}" varStatus="status">
        <tr>
            <td><c:out value="${status.count}"></c:out></td>
            <td><c:out value="${person.nombre}"></c:out></td>
            <td><c:out value="${person.user}"></c:out></td>
            <td><c:out value="${person.pass}"></c:out></td>
            <td>
                <h5>
                    <form action="ServletSesion" method="post">
                        <input type="hidden" value="eliminar" name="accion"/>
                        <input type="hidden" name="id" value="${person.id}"/>
                        <input type="submit" value="Eliminar"/>
                    </form>

                <a href="<c:url value = "/getPerson?id=${person.id}"/>"> <input type="submit" value="Modificar"/> </a></h5>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>




</body>
</html>
<% }else{
    System.out.println("No hay sesión iniciada!");
    request.getRequestDispatcher("index.jsp").forward(request,response);

}
%>