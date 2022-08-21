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
    <jsp:include page="../templates/import-head.jsp" />

</head>
<body>

<jsp:include page="../templates/menu.jsp" />

<div class="container mt-3">

    <h1 class="text-center">Lista de productos</h1>

    <div class="row justify-content-center mb-2">
        <div class="col-10">
            <form action="save-product" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="name-product" class="form-label">Nombre:</label>
                    <input type="text" name="name" class="form-control" id="name-product">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">$</span>
                    <input type="text" class="form-control" name="price" id="price-product">
                </div>

                <div class="mb-3">
                    <labe for="" class="from-label"></labe>
                    <select name="category" id="category-product" class="form-select">
                        <option value="botana">Botana</option>
                        <option value="bebidas">Bebidas</option>
                        <option value="dulces">Dulces</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="file-product" class="form-label">Foto de producto:</label>
                    <input type="file" name="photo" class="form-control" id="file-product">
                </div>

                <button type="submit" class="btn btn-primary">Registrar</button>
                <button type="reset" class="btn btn-danger">Cancelar</button>

            </form>


        </div>
    </div>


    <div class="row justify-content-center">
        <div class="col-10">
            <table class="table table-hover table-bordered table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Edad</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="person">
                    <tr>
                        <td><c:out value="${person.id}"/></td>
                        <td><c:out value="${person.name}"/></td>
                        <td><c:out value="${person.age}"/></td>
                        <td>

                            <div class="row justify-content-center">
                                <div class="col-6">
                                    <a href="get-person?id=${person.id}" class="btn btn-info">
                                        <i class="fa-solid fa-magnifying-glass"></i> Cosultar
                                    </a>
                                </div>

                                <div class="col-6">
                                    <form action="delete-person" method="post" class="d-inline">

                                        <input type="hidden" name="id" value="${person.id}">

                                        <button type="submit" class="btn btn-danger">
                                            <i class="fa-solid fa-trash"></i> Eliminar
                                        </button>
                                    </form>
                                </div>

                            </div>


                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>


</div>

<jsp:include page="../templates/import-script.jsp" />

</body>
</html>

