<?php 
 require 'db.php';
 session_start();

 if (isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['hash']) && !empty($_GET['hash'])) {
 	$email =$mysqli->escape_string($_GET['email']);
 	$hash =$mysqli->escape_string($_GET['hash']);
 	$result = $mysqli->query("SELECT * FROM usuarios WHERE email ='$email' AND hash='$hash'");
 	if ($result->num_rows == 0) {
 		$_SESSION['message']= 'Has ingresadoa una URL invalida para cambiar contraseña!';
 		header("location:error.php");
 		exit();
 	}
 }
 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="utf-8">
 	<title>Cambiar contraseña</title>
 	<?php include 'css/css.html'; ?>
 </head>
 <body>
 	<div class="form">
 		<div class="alert alert-info" role="alert"><h1>Escribe tu nueva contraseña</h1></div>
 		<hr>
 		<form action="reset_password.php" method="POST">
 			
 			<div class="field_wrap">
 				<input type="password" class="form-control" name="nuevopassword" placeholder="Nueva contraseña " required>
 			</div>
			<div class="field_wrap">
 				<input type="password" class="form-control" name="confirmarpassword" placeholder="Confirma tu nueva contraseña " required>
 			</div>

 			<input type="hidden" name="email" value="<?=$email ?>">
 			<input type="hidden" name="hash" value="<?=$hash ?>"> <br>

 			<button class="button button-block">Actualizar</button>
 		</form>
 	</div>
 
 </body>
 </html>