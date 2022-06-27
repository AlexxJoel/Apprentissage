<!DOCTYPE html>
<html>
<head>
	<title>respuesta</title>
	
</head>
<body>
	<?php 

 

 if (isset($_POST['btn'])) {
 	echo "<h1>Se enviaron por metodo Post</h1>";
 	echo "<br/>Nombre:".$_POST['nombre']."<br/>Apellido:".$_POST['apellido'];
 	echo "<br/>Correo:".$_POST['correo'];
 	echo "<br/>Usuario:".$_POST['usuario'];
 	echo "<br/>Clave:".$_POST['clave'];
 	echo "<br/>Telefono:".$_POST['telefono'];
 }elseif (isset($_GET['btn'])) {
 	echo "<h1>Se enviaron por metodo Get</h1>";
 	echo "<br/>Nombre:".$_GET['nombre']."<br/>Apellido:".$_GET['apellido'];
 	echo "<br/>Correo:".$_GET['correo'];
 	echo "<br/>Usuario:".$_GET['usuario'];
 	echo "<br/>Clave:".$_GET['clave'];
 	echo "<br/>Telefono:".$_GET['telefono'];
 }
 ?>
</body>
</html>
