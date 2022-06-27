
<!DOCTYPE html>
<html lang="en">
<head>
	<title>BECASIST44</title>
	<meta http-equiv="type-text" content="text/html" charset="utf-8"><!-- obligatorio -->
	<!-- palabras clavez cuando se hace la busqueda -->	
	<meta name="Keyword" content="pagina,sencilla,intento">
	<!-- una descripcion de nuestra pagina -->
	<meta name="description" content="Estructura de html etc"> 
	<!-- ponemos el autor -->
	<meta name="author" content="AlexxJ">

    <script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script> 


</head>
<body>

<?php

include_once '../../conexion.php';

       date_default_timezone_set('America/Mexico_City'); //Horario
	$fecha = date("d-m-Y g'i:A"); //https://www.php.net

    $usuario=$_POST['user']; //Usuario recibido del formulario
    $pass=$_POST['pass']; //Contraseña recibida del formulario
    $pass=md5($pass);  //123
    //Encriptamos la clave 



    $counte = "SELECT COUNT(*) AS contar FROM user WHERE usuario='$usuario' AND contraseña='$pass'";
    //Checa que tenga datos la tabla lo guarda en la variable contar y esto se va  realizar con las condiciones puestas 
    $log = mysqli_query($conex, $counte); // activamos

    $array = mysqli_fetch_array($log);//oo ponemos en un array


    if ($array['contar']>0) { //checamos que tenga datos 
  

		header("Content-type: application/xls");
		header("Content-Disposition: attachment; filename=Alumnos $fecha.xls");


		$query = "SELECT * FROM alumnos";
		$result = mysqli_query($conex,$query);

		?>

		<table>
			<thead>
				<tr>
					<th>Numero de Control</th>
					<th>Semestre</th>
					<th>Grupo</th>
					<th>Especialidad</th>
					<th>Turno</th>
					<th>Curp</th>
					<th>Apellido paterno</th>
					<th>Apellido materno</th>
					<th>Nombre</th>
					<th>Fecha de nacimiento</th>
					<th>Telefono celulat</th>
					<th>Telefono casa</th>
					<th>Correo electronico</th>
					<th>Entidad</th>
					<th>Municipio</th>
					<th>Localidad</th>
					<th>Tipo de asentamiento</th>
					<th>Nombre de asentamiento</th>
					<th>Codigo postal</th>
					<th>Tipo de vialidad</th>
					<th>Nombre de vialidad</th>
					<th>Numero exterior</th>
					<th>Numero interior</th>
					<th>Descripcion de la ubicaciòn</th>
				</tr>
			</thead>
			<tbody>
			<?php 
			while ($row=mysqli_fetch_assoc($result)) { ?>

				<tr>
					<td><?php echo $row['no_control']; ?></td>
					<td><?php echo $row['semestre']; ?></td>
					<td><?php echo $row['grupo']; ?></td>
					<td><?php echo $row['especialidad']; ?></td>
					<td><?php echo $row['turno']; ?></td>
					<td><?php echo $row['curp_alumno']; ?></td>
					<td><?php echo $row['apellido_paterno']; ?></td>
					<td><?php echo $row['apellido_materno']; ?></td>
					<td><?php echo $row['nombre']; ?></td>
					<td><?php echo $row['fecha_nacimiento']; ?></td>
					<td><?php echo $row['telefono_celular']; ?></td>
					<td><?php echo $row['telefono_casa']; ?></td>
					<td><?php echo $row['correo_electronico']; ?></td>
					<td><?php echo $row['entidad']; ?></td>
					<td><?php echo $row['municipio']; ?></td>
					<td><?php echo $row['localidad']; ?></td>
					<td><?php echo $row['tipo_asentamiento']; ?></td>
					<td><?php echo $row['nombre_asentamiento']; ?></td>
					<td><?php echo $row['codigo_postal']; ?></td>
					<td><?php echo $row['tipo_vialidad']; ?></td>
					<td><?php echo $row['nombre_vialidad']; ?></td>
					<td><?php echo $row['numero_exterior']; ?></td>
					<td><?php echo $row['numero_interior']; ?></td>
					<td><?php echo $row['descripcion_ubicacion']; ?></td>
				</tr>

			<?php } ?>
			</tbody>
		</table>
<?php 
    }else{
    	?>

		<script type='text/javascript'>
			Swal.fire({
				icon: 'error',
                title: 'Oops...',
                text: 'Usuario y/o contraseña no son correctos',
                confirmButtonText: 'Regresar',                
				}).then((result) => {
				 if (result.isConfirmed) {
				    window.location.href='carga.php';
				    
				  } 
				})

			</script>
			<?php 
    }
    mysqli_close($conex);
?>


</body>
</html>