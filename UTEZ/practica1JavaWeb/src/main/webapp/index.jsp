<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body class="text-center">
<h1>Iniciar sesión</h1>
<div class="container">
    <div class="abs-center">
        <form class="form-control bg-dark bg-opacity-50" action="ServletSesion" method="post">
            <div class="form-floating mb-3">
                <label for="user">Usuario: </label>
                <input type="text" class="form-control" id="user" name="user" placeholder="Escribe tu usuario...">

            </div>
            <div class="form-floating">
                <label for="pass">Contraseña</label>
                <input type="password" class="form-control" id="pass" name="pass" placeholder="Escribe tu contraseña...">

                <input type="hidden" value="inicioSesion" name="accion">
            </div>
            <button type="submit" class="btn btn-primary btn-lg">Iniciar Sesión</button>

        </form>
    </div>
</div>

<div class="${clase}" role="alert">
    <h4>${mensaje}</h4>
</div>

<script src="js/bootstrap.js"></script>

</body>
</html>