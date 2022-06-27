
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Alexx</title>
	<meta http-equiv="type-text" content="text/html" charset="utf-8"><!-- obligatorio -->
	<!-- palabras clavez cuando se hace la busqueda -->	
	<meta name="Keyword" content="pagina,sencilla,intento">
	<!-- una descripcion de nuestra pagina -->
	<meta name="description" content="Estructura de html etc"> 
	<!-- ponemos el autor -->
	<meta name="author" content="AlexxJ">

</head>
<body>

<?php

date_default_timezone_set('America/Mexico_City'); //Horario
$fecha = date("d-m-Y g'i:A"); //https://www.php.net

header("Content-type: application/xls");
header("Content-Disposition: attachment; filename=Alumnos $fecha.xls");

require_once("mysql.php");

$conn = new Conexion();
$link = $conn->conectarse();


$query = "SELECT * FROM usuario";
$result = mysqli_query($link,$query);

?>

<table>
	<tr>
		<th>Id</th>
		<th>Nombre</th>
		<th>Telefono</th>
		<th>Email</th>
	</tr>
	<?php 
	while ($row=mysqli_fetch_assoc($result)) { ?>

	<tr>
		<td><?php echo $row['id']; ?></td>
		<td><?php echo $row['nombre']; ?></td>
		<td><?php echo $row['telefono']; ?></td>
		<td><?php echo $row['email']; ?></td>
	</tr>

	<?php } ?>
</table>

</body>
</html>