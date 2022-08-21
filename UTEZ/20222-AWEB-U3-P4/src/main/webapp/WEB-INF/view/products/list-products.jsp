<%--
  Created by IntelliJ IDEA.
  User: Josafat
  Date: 29/07/2022
  Time: 08:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List products</title>
    <jsp:include page="../templates/import-head.jsp"/>

</head>
<body>

<jsp:include page="../templates/menu.jsp"/>

<div class="container mt-3">

    <div class="row justify-content-center mb-2">
        <div class="col-10">
            <div class="row justify-content-end">
                <div class="col-10">

                </div>

                <div class="col-2 text-end">
                    <a href="create-product" class="btn btn-primary">Registrar producto</a>
                </div>

            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-10">
            <table class="table table-hover table-bordered table-striped">
                <tr>
                    <th>#</th>
                    <th>Imagen</th>
                    <th>Nombre producto</th>
                    <th>Categoria</th>
                    <th>Precio</th>
                    <th>Acciones</th>
                </tr>
                <tbody>
                <c:forEach items="${listProducts}" var="prductX"  varStatus="statusList">

                    <tr>
                        <td>${statusList.count}</td>
                        <td>
                            <img src="images?id=${prductX.id}">
                        </td>
                        <td>${prductX.name}</td>
                        <td>${prductX.category}</td>
                        <td>${prductX.price}</td>
                        <td>
                            botones xd
                        </td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="../templates/import-script.jsp"/>

</body>
</html>

