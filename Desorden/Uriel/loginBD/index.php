<?php
error_reporting(0);
require "db.php"; //Conexión con la Base de datos
ob_start(); //Función para almacenar codigo del lado del servidor
session_start(); //Funcion que permite iniciar sesiones
if($_SESSION['logged_in'] == true){
	header("Location: perfil.php");
	exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login/Crear cuenta</title>
    <?php include 'css/css.html';?>
</head>
<?php
    if($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (isset($_POST['login'])) {
              require "login.php"; 
        }else if (isset($_POST['registrar'])) {
              require "registrar.php"; 
        }
    }
?>
<body>
    <div class="conteiner">
        <div class="panel-body">
            <div class="row">
                <div class="form">
                    <div class="panel-heading">
                        <div class="row">
                            <ul class="botones-principales">
                                <li class="tab active"><a href="#login">Login</a></li>
                                <li class="tab"><a href="#signup">Crear cuenta</a></li>
                            </ul>
                        </div>
                    </div>
                    <form action="index.php" method="POST" class="form-login" style="display: block;">
                        <input type="email" class="form-control" placeholder="&#xf0e0; Correo" style="font-family: FontAwesome;" name="email" required autofocus><br/>
                        <input type="password" class="form-control" placeholder="&#xf023; Contraseña" style="font-family: FontAwesome;" name="password" required><br/>
                        <button class="button button-block" name="login">INGRESAR</button>
                        <div class="form-group">
                            <div class="row">
                                <div>
                                    <a href="forgot.php">¿Olvidaste tu contraseña?</a>
                                </div>
                            </div>
                        </div>
                    </form>
                    <form action="index.php" method="POST" class="form-create" style="display: none"><br/>
                        <input type="text" placeholder="Nombre" class="form-control" autocomplete="off" name="nombre" required><br/>
                        <input type="text" placeholder="Apellido" class="form-control" autocomplete="off" name="apellido" required><br/>
                        <input type="email" placeholder="Correo" class="form-control" autocomplete="off" name="email"><br/>
                        <input type="password" placeholder="Contraseña" class="form-control" autocomplete="off" name="password"><br/>
                        <button type="submit" class="button button-block" name="registrar" >REGISTRARSE</button>

                    </form>
                </div>                
            </div>
        </div>
    </div>
<script src="js/index.js"></script>   
</body>
</html>

