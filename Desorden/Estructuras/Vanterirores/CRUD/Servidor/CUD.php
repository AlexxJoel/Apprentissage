<?php        
  require '../conexion.php';

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta  http-equiv="content-Type" content="text/html" charset="utf-8">
	<meta name="Author" content="Joel,Miguel">

	<title>Becas Estudiantes Nivel superior</title>

	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/sstyile.css">

</head>
<body>
	<header class="encabezado">
		<nav>
			<div class="logo">
				<p><a href="#">Becas</a></p>
			</div>
			<div class="gris">Bienvenido</div>
			<div class="enlaces">
				<ul>
					<li><a href="#">Acerca De</a></li>
				</ul>
			</div>
		</nav>
	</header>

		<div class="Reglas">
			<h2>REGISTROS DE BECAS</h2>
				<p><b>ESTIMADO(A) DOCENTE:</b>
				EN ESTA PAGINA SOLO PODRAS VER EL REGISTRO BUSCADO , SI DECEAS REALIZAR ACCIONES : APLASTA EL BOTON DE ACTUALIZAR O SIMPLEMENTE ELIMINAR</p>
				<p><b>1.</b> BUSCAR  CUALQUIER REGISTRO MEDIANTE EL NUMERO DE CONTROL ANTES DE ELIMINAR O EDITAR</p>
				<p><b>2.</b> ELIMINAR REGISTROS.</p>
				<p><b>3.</b> PODRAS ACTUALIZAR REGISTROS..</p>

		</div>

		<form action="CUD.php" method="POST">
			<div class="form">  <!-- Aqui van los campos de informacion del alumno  -->

	<h4>CONSULTA</h4>

				<div class="grupo"> <!-- BIGINT -->
						<label>Numero de control:</label>					
						<input type="text"  maxlength="14" name="numerocontrol" required placeholder="Ingresa 18 Numeros">
				</div>

					<button type="submit" name="consulta">Consultar</button>
				    <button type="submit" name="Elimiar">Eliminar</button>

			</div>
		</form>
	<?php 
	
	$numero=$_POST['numerocontrol'];

	if (isset($_POST['consulta'])) {	



		$CsltId= "SELECT * FROM alumnos WHERE no_control= '$numero'";

		$JtarId = mysqli_query($conex,$CsltId) or die(mysqli_error($conex));


	}elseif (isset($_POST['Elimiar'])) {
		


		$clselimi= "DELETE FROM alumnos WHERE no_control= '$numero'"; 

		$JtarDelete= mysqli_query($conex,$clselimi) or die(mysqli_error($conex));

		if ($JtarDelete) {

			echo "<script type='text/javascript'>";
	        
	        echo "alert('Eliminación exitosa');";        

	        
	        echo "</script>";
			
			
		}

		
	}


	 ?>

	 <form action="Editar.php" method="POST">
			<div class="form">

	<h5>Primero haz la consulta</h5>
	

	 <?php foreach ($JtarId as $control) {  ?> 
	 	<h4>DATOS ESCOLARES DEL ALUMNO(A)</h4>

				<div class="grupo">   <!-- INT -->	
					<label>Numero de control:</label>
						<input readonly name="id" value="<?php echo $control['no_control']; ?>">
				</div>				


				<div class="grupo">   <!-- INT -->				
					<label>Semestre</label>
						<input readonly value="<?php echo $control['semestre']; ?>">
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Grupo:</label> 
						<input readonly value="<?php echo $control['grupo']; ?>">
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Especialidad:</label>
						<input readonly value="<?php echo $control['especialidad']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Turno</label>
						<input readonly value="<?php echo $control['turno']; ?>">
				</div>

	<h4>DATOS DEL ALUMNO(A)</h4>


				<div class="grupo"> <!-- VARCHAR -->
					<label>Curp del estudiante</label>
						<input readonly value="<?php echo $control['curp_alumno']; ?>">				
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Paterno</label>	
						<input readonly value="<?php echo $control['apellido_paterno']; ?>">	
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Materno</label>
						<input readonly value="<?php echo $control['apellido_materno']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre(s)</label>
						<input readonly value="<?php echo $control['nombre']; ?>">
				</div>

				<div class="grupo">  <!-- DATE -->
					<label>Fecha de Nacimiento</label>
						<input readonly value="<?php echo $control['fecha_nacimiento']; ?>">
				</div>

				<div class="grupo">  <!-- BIGMEDIUM-INT -->
					<label>Número de Celular</label>
						<input readonly value="<?php echo $control['telefono_celular']; ?>">
				</div>

				<div class="grupo"><!-- BIGMEDIUM-INT -->
					<label>Número de Teléfono de Casa</label>
						<input readonly value="<?php echo $control['telefono_casa']; ?>">
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Correo</label>
						<input readonly value="<?php echo $control['correo_electronico']; ?>">
				</div>

	<h4>DIRECCIÓN DEL ALUMNO(A)</h4>


				<div class="grupo">   <!-- INT -->
					<label>Entidad</label>
						<input readonly value="<?php echo $control['entidad']; ?>">
				</div>

				<div class="grupo"> <!-- INT -->
					<label>Municipio</label>
						<input readonly value="<?php echo $control['municipio']; ?>">
				</div>

				<div class="grupo">  <!-- INT -->
					<label>Localidad</label>
						<input readonly value="<?php echo $control['localidad']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de asentamiento</label>
						<input readonly value="<?php echo $control['tipo_asentamiento']; ?>">
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Nombre del Asentamiento</label>
						<input readonly value="<?php echo $control['nombre_asentamiento']; ?>">
				</div>

				<div class="grupo">  <!-- INT -->
					<label>Código Postal</label>
						<input readonly value="<?php echo $control['codigo_postal']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de Vialidad</label>
						<input readonly value="<?php echo $control['tipo_vialidad']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre de la vialidad</label>
						<input readonly value="<?php echo $control['nombre_vialidad']; ?>">
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número exterior</label>
						<input readonly value="<?php echo $control['numero_exterior']; ?>">
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número Interior</label>
						<input readonly value="<?php echo $control['numero_interior']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Descripción de la Ubicación</label>
						<input readonly value="<?php echo $control['descripcion_ubicacion']; ?>">
				</div>
			<?php } ?>

					<button type="submit" name="Act">Ir a Actualizar</button>
					
					
					
			</div>	
		</form>
		<?php 



		 ?>




		<footer>
		<div class="Foter-pag">
				<div class="copy">
					<p>Copyrigth - Cetis 44</p>
				</div>
		</div>
	</footer>
</body>
</html>
