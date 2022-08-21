<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 06/08/2022
  Time: 01:52 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- //////////////////NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-light" id="menu">
    <div class="container-fluid">
        < class="navbar-brand" href="#" id="nav-imagen">
            <img src="/IMAGES/Logo-utez.webp" a
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-1 mb-lg-0">
                <li class="nav-item">
                    <!-- Empieza lista -->
                    <a
                            class="nav-link"
                            aria-current="page"
                            href="/HTML/ofertas.html"
                    >Ofertas</a
                    >
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/HTML/inventario.html">Inventario</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="/HTML/administradores.html"
                    >Administradores</a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/HTML/contraseña.html"
                    >Cambiar contraseña</a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cerrar sesión</a>
                </li>
            </ul>
        </div>
    </div>
</nav>