<!DOCTYPE html>
<html>
<head>
	<title>Formulario</title>
	<meta charset="utf-8">
	<meta name="author" content="Alexx">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro&display=swap" rel="stylesheet">

	<script type="text/javascript" src="js/function.js"></script>
</head>
<body>
	<header class="encabezado">
		<nav>
			<div class="logo">
				<p><a href="html.html">ALEXX JOEL</a></p>
			</div>
			</div>
			<div class="enlaces">
				<ul>
					<li><a href="#">Enlaces</a></li>
					<li><a href="#">Enlaces</a></li>

				</ul>
			</div>
		</nav>
	</header>

	<form action="enviar.php" method="POST" name="enviar">
		<div class="form">
			<h1>Enviar correo</h1>

			<div class="grupo">
				<input required type="text" name="correo"><span class="barra"></span>
				<label>Correo:</label>
			</div>

			<div class="grupo">
				<input required type="text" name="asunto"><span class="barra"></span>
				<label>Asunto:</label>
			</div>

			<div class="grupo">
				<textarea required name="msj"></textarea><span class="barra"></span>
				<label>Mensaje:</label>
			</div>

			<button type="submit">Enviar</button>
		</div>
	</form>
	<footer>
		<div class="Foter-pag">
				<div class="copy">
					<p>Copyrigth - Herrera hernandez Joel alejandro</p>
				</div>
		</div>
	</footer>
</body>
</html>