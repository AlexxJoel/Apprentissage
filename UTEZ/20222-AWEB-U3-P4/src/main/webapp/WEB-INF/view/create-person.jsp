<%--
  Created by IntelliJ IDEA.
  User: CA2-PC-
  Date: 29/06/2022
  Time: 12:02 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrar persona</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<jsp:include page="templates/menu.jsp" />

<div class="container mt-3">

    <h1 class="text-center">Crear usuario</h1>

    <div class="row justify-content-center">
        <div class="col-4">

            <form action="save-person" method="post">

                <div class="mb-3">
                    <label for="controlName" class="form-label">Nombre: </label>
                    <input type="text" class="form-control" id="controlName" name="name">
                </div>

                <div class="mb-3">
                    <label for="controlAge" class="form-label">Edad: </label>
                    <input type="number" class="form-control" id="controlAge" name="age">
                </div>

                <button type="submit" class="btn btn-primary">Registrar</button>
                <button type="reset" class="btn btn-danger">Cancelar</button>

            </form>


        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
