<?php
require "send_email.php";
require 'db.php';
ob_start();
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$email = $mysqli->escape_string($_POST['email']);
	$result =$mysqli->query("SELECT * FROM usuarios WHERE email = '$email'");
	if($result->num_rows ===0){
		$_SESSION['message'] = "El usuario con ese correo no fue encontrado!";
		header('Location: error.php');
		exit();

	}else{
		$user = $result->fetch_assoc();
		$email =$user['email'];
		$hash = $user['hash'];
		$nombre = $user['nombre'];
		$_SESSION['message'] = 'Por favor revisa tu correo <strong>'.$email.'</strong>'
		. ' por un link de confirmacion para completar el cambio de contraseña!';
		$para_usuario = $email;
		$subject = 'Cambiar password (Desarrolla aplicaciones web con conexión a bases de datos)';
		$message_body = '
		Hola'.$nombre.',
		<br/>Has pedido un cambio de contraseña!
		por favor hacer click en el link para cambiar tu contraseña 
		http://localhost/sitio/loginBD/reset.php?email='.$email. '&hash='.$hash;

		 //Aqui vas a poner tu ruta(en el link de arriba ) ejemplo:
        
       # http://localhost/loginBD/reset.php?email='.$email.'&hash='.$hash;


		sendEmail($para_usuario, $subject, $message_body);
		header('Location: success.php');
		exit();
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Recupera tu contraseña</title>
<?php include 'css/css.html'; ?>
</head>
<body>
<div class="form">
	<div class="alert alert-success" role="alert"><h1>Recupera tu contraseña</h1></div>
	<form action="forgot.php" method="post">
		<div>
			<input class="form-control" type="email" placeholder="ingresa tu correo" required autocomplete="off"   name="email"/>
		</div>
		<br/>
		<button class="button button-block"/>Enviar</button>
	</form>
</div>
</body>
</html>
