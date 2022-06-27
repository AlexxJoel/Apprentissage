<?php 
	session_start();
	session_unset();
	session_destroy(); //eliminamos sesiones iniciadAS
 ?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="utf-8">
 	<title>Logout</title>
 	<?php include 'css/css.html'; ?>
 </head>
 <body>
 	<div class="form">
 	<div class="alert alert-warning" role="alert"><h1>Haz cerrado tu sesión</h1></div>
 		<a href="index.php"><button class="button button-block">INICIO</button></a>
 	</div> 
 </body>
 </html>

 