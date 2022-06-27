<?php        
  require '../conexion.php';

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta  http-equiv="content-Type" content="text/html" charset="utf-8">
	<meta name="Author" content="Joel,Miguel">

	<title>Becas Estudiantes Nivel Medio Superior</title>

	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/sstyile.css">

</head>
<body>
	<header class="encabezado">
		<nav>
			<div class="logo">
				<p><a href="../index.html">Becas</a></p>
			</div>
			<div class="gris">Bienvenido</div>
			<div class="enlaces">
				<!-- <ul>
					<li><a href="#">Acerca De</a></li>
				</ul> -->
			</div>
		</nav>
	</header>

		<div class="Reglas">
			<h2>REGISTROS DE BECAS</h2>
				<p>Actualice el campo que se deseae</p>

		</div>


	<?php 
	
		$control1=$_POST['id'];


		$CsltaEdit= "SELECT * FROM alumnos WHERE no_control= '$control1'";

		$JtarEdit = mysqli_query($conex,$CsltaEdit) or die(mysqli_error($conex));



	foreach ($JtarEdit as $control) {

	 ?>

	 <form action="Editar.php" method="POST">
			<div class="form">



	<h4>DATOS ESCOLARES DEL ALUMNO(A)</h4>


				<div class="grupo">   <!-- INT -->	
					<label>Número de control:</label>
						<input readonly name="id1" value="<?php echo $control['no_control']; ?>">
				</div>				


				<div class="grupo">   <!-- INT -->				
					<label>Semestre:</label>
						<input  name="semestre" value="<?php echo $control['semestre']; ?>">
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Grupo:</label> 
						<input  name="grupo" value="<?php echo $control['grupo']; ?>">
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Especialidad:</label>
						<input  name="especialidad" value="<?php echo $control['especialidad']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Turno:</label>
						<input  name="turno" value="<?php echo $control['turno']; ?>">
				</div>

	<h4>DATOS DEL ALUMNO(A)</h4>


				<div class="grupo"> <!-- VARCHAR -->
					<label>CURP:</label>
						<input  name="resultado" value="<?php echo $control['curp_alumno']; ?>">				
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Paterno:</label>	
						<input  name="apellido_paterno" value="<?php echo $control['apellido_paterno']; ?>">	
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Materno:</label>
						<input  name="apellido_materno" value="<?php echo $control['apellido_materno']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre(s):</label>
						<input  name="nombre" value="<?php echo $control['nombre']; ?>">
				</div>

				<div class="grupo">  <!-- DATE -->
					<label>Fecha de Nacimiento:</label>
						<input  name="fecha_nacimiento" value="<?php echo $control['fecha_nacimiento']; ?>">
				</div>

				<div class="grupo">  <!-- BIGMEDIUM-INT -->
					<label>Número de Celular:</label>
						<input  name="celular" value="<?php echo $control['telefono_celular']; ?>">
				</div>

				<div class="grupo"><!-- BIGMEDIUM-INT -->
					<label>Número de Teléfono de Casa:</label>
						<input  name="tel_casa" value="<?php echo $control['telefono_casa']; ?>">
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Correo:</label>
						<input  name="correo" value="<?php echo $control['correo_electronico']; ?>">
				</div>

	<h4>DIRECCIÓN DEL ALUMNO(A)</h4>


				<div class="grupo">   <!-- INT -->
					<label>Entidad:</label>
						<input  name="entidad" value="<?php echo $control['entidad']; ?>">
				</div>

				<div class="grupo"> <!-- INT -->
					<label>Municipio:</label>
						<input  name="municipio" value="<?php echo $control['municipio']; ?>">
				</div>

				<div class="grupo">  <!-- INT -->
					<label>Localidad:</label>
						<input  name="localidades" value="<?php echo $control['localidad']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de asentamiento:</label>
						<input  name="tipo_asentamiento" value="<?php echo $control['tipo_asentamiento']; ?>">
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Nombre del Asentamiento:</label>
						<input  name="nom_asentamiento" value="<?php echo $control['nombre_asentamiento']; ?>">
				</div>

				<div class="grupo">  <!-- INT -->
					<label>Código Postal:</label>
						<input  name="cp" value="<?php echo $control['codigo_postal']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de Vialidad:</label>
						<input  name="tipo_vialidad" value="<?php echo $control['tipo_vialidad']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre de la vialidad:</label>
						<input  name="nom_vialidad" value="<?php echo $control['nombre_vialidad']; ?>">
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número exterior:</label>
						<input  name="numero_exterior" value="<?php echo $control['numero_exterior']; ?>">
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número Interior:</label>
						<input  name="numero_interior" value="<?php echo $control['numero_interior']; ?>">
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Descripción de la Ubicación:</label>
						<input  name="descripcion_ubicacion" value="<?php echo $control['descripcion_ubicacion']; ?>">
				</div>
			

					<button type="submit" name="Actualizar">Actualizar:</button>

					<!-- <button type="submit" name="regresar">Regresar</button> -->

			</div>	
				<?php } ?>	
		</form>	
	<?php 

    
  if (isset($_POST['Actualizar'])) {
    
        //Recibimos los datos del formulario y los metemos en variables//
    
        //DATOS ALUMNO (ESCUELA)//
  	$control1=$_POST['id1'];
    $semestre=$_POST['semestre']; //Semestre del alumno
    $grupo=$_POST['grupo'];
    $especialidad=$_POST['especialidad'];
    $turno=$_POST['turno'];
       //DATOS ALUMNO//
    $curp=$_POST['resultado'];
    $ap_pat=$_POST['apellido_paterno'];
    $ap_mat=$_POST['apellido_materno'];
    $nombre=$_POST['nombre'];
    $fecnac=$_POST['fecha_nacimiento']; //Fecha de nacimiento
    $celular=$_POST['celular'];
    $tel_casa=$_POST['tel_casa'];
    $correo=$_POST['correo'];
        //DIRECCION ALUMNO//
    $entidad=$_POST['entidad'];
    $municipio=$_POST['municipio'];
    $localidad=$_POST['localidades'];
    $asentamiento=$_POST['tipo_asentamiento'];
    $nom_asentamiento=$_POST['nom_asentamiento'];
    $codigo_postal=$_POST['cp'];
    $vialidad=$_POST['tipo_vialidad'];
    $nom_vialidad=$_POST['nom_vialidad'];
    $num_exterior=$_POST['numero_exterior'];
    $num_interior=$_POST['numero_interior'];
    $descripcion=$_POST['descripcion_ubicacion'];



    //CREAMOS LA INSTRUCCIOÓN QUE Actualiza LOS DATOS EN LA TABLA "ALUMNOS"//
    
$Actualizar="UPDATE alumnos set  semestre='$semestre' , grupo='$grupo' , especialidad='$especialidad' , turno='$turno' , curp_alumno='$curp' , apellido_paterno='$ap_pat' , apellido_materno='$ap_mat' , nombre='$nombre' , fecha_nacimiento='$fecnac' , telefono_celular='$celular' , telefono_casa='$tel_casa' , correo_electronico='$correo' , entidad='$entidad' , municipio='$municipio' , localidad='$localidad' , tipo_asentamiento='$asentamiento' , nombre_asentamiento='$nom_asentamiento' , codigo_postal='$codigo_postal' , tipo_vialidad='$vialidad' , nombre_vialidad='$nom_vialidad' , numero_exterior='$num_exterior' , numero_interior='$num_interior' , descripcion_ubicacion='$descripcion' WHERE  no_control='$control1'" ;

    
        //ABRIMOS CONEXIÓN E INSERTAMOS DATOS

   $res=mysqli_query ($conex,$Actualizar);


    if ($res) {


        echo "<script type='text/javascript'>";
        
        echo "alert('Actualizacion exitosa');";        

        echo "window.location.href='CUD.php'";        

        echo "</script>";


         mysqli_close($conex);

        


 
    }   
      

  }



    
    ?>
   
		<footer>
		<div class="Foter-pag">
				<div class="copy">
					&copy; Cetis 44 <!--Mike y Joel xd-->
				</div>
		</div>
	</footer>
</body>
</html>