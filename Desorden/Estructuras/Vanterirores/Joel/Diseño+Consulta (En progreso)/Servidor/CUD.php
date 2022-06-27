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
				ES MUY IMPORTANTE QUE REALICES ACCIÓNES SEGURAS :</p>
				<p><b>1.</b> PODRAS ACTUALIZAR REGISTROS.</p>
				<p><b>2.</b> ELIMINAR REGISTROS.</p>
				<p><b>3.</b> BUSCAR CUALQUIER REGISTRO MEDIANTE EL NUMERO DE CONTROL.</p>

		</div>

		<form action="CUD.php" method="POST">
			<div class="form">  <!-- Aqui van los campos de informacion del alumno  -->

	<h4>CONSULTA</h4>

				<div class="grupo"> <!-- BIGINT -->
						<label>Numero de control:</label>					
						<input type="text"  maxlength="14" name="numerocontrol" required placeholder="Ingresa 18 Numeros">
				</div>

					<button type="submit" name="consulta">Consultar</button>
			</div>
		</form>



		<form>
			<div class="form">

	<h4>DATOS ESCOLARES DEL ALUMNO(A)</h4>

				<div class="grupo">   <!-- INT -->	
					<label>Numero de control:</label>
						<input readonly>
				</div>				


				<div class="grupo">   <!-- INT -->				
					<label>Semestre</label>
						<input readonly>
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Grupo:</label> 
						<input readonly>
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Especialidad:</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Turno</label>
						<input readonly>
				</div>

	<h4>DATOS DEL ALUMNO(A)</h4>


				<div class="grupo"> <!-- VARCHAR -->
					<label>Curp del estudiante</label>
						<input readonly>				
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Paterno</label>	
						<input readonly>	
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Materno</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre(s)</label>
						<input readonly>
				</div>

				<div class="grupo">  <!-- DATE -->
					<label>Fecha de Nacimiento</label>
						<input readonly>
				</div>

				<div class="grupo">  <!-- BIGMEDIUM-INT -->
					<label>Número de Celular</label>
						<input readonly>
				</div>

				<div class="grupo"><!-- BIGMEDIUM-INT -->
					<label>Número de Teléfono de Casa</label>
						<input readonly>
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Correo</label>
						<input readonly>
				</div>

	<h4>DIRECCIÓN DEL ALUMNO(A)</h4>


				<div class="grupo">   <!-- INT -->
					<label>Entidad</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- INT -->
					<label>Municipio</label>
						<input readonly>
				</div>

				<div class="grupo">  <!-- INT -->
					<label>Localidad</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de asentamiento</label>
						<input readonly>
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Nombre del Asentamiento</label>
						<input readonly>
				</div>

				<div class="grupo">  <!-- INT -->
					<label>Código Postal</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de Vialidad</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre de la vialidad</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número exterior</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número Interior</label>
						<input readonly>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Descripción de la Ubicación</label>
						<input readonly>
				</div>

					<button type="submit" name="Editar">Editar</button>
					<button type="submit" name="Elimiar">Eliminar</button>

			</div>			
		</form>
		<footer>
		<div class="Foter-pag">
				<div class="copy">
					<p>Copyrigth - Cetis 44</p>
				</div>
		</div>
	</footer>
</body>
</html>
