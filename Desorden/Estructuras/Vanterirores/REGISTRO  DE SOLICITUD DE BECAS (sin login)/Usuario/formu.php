 <?php        
  require '../conexion.php';

    //Esta es la consulta a los municipios

   $CsltMuni= "SELECT Cve_Mun,Nom_Mun FROM localidades GROUP BY Nom_Mun ORDER BY Cve_Mun";

   $JtarMuni = mysqli_query($conex,$CsltMuni) or die(mysqli_error($conex));
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta  http-equiv="content-Type" content="text/html" charset="utf-8">
	<meta name="Author" content="Joel,Miguel">
	<title>Becas Estudiantes Nivel superior</title>

	<link rel="stylesheet" type="text/css" href="../css/style.css">

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
    <script type="text/javascript" src="../Js/Funciones.js"></script>
</head>
<body>
	<header class="encabezado">
		<nav>
			<div class="logo">
				<p><a href="../index.html">Becas</a></p>
			</div>
			<div class="gris">Bienvenido REGISTRATE</div>
			<div class="enlaces">
				<!-- <ul>
					<li><a href="#">Acerca De</a></li>
				</ul> -->
			</div>
		</nav>
	</header>

		<div class="Reglas">
			<h2>PADRÓN DE BECAS</h2>
				<p><b>ESTIMADO(A) ALUMNO(A):</b>
				ES MUY IMPORTANTE QUE REALICES LA CAPTURA DE ESTE FORMULARIO CON MUCHO CUIDADO Y RESPONSABILIDAD, DE ELLO DEPENDE QUE TU APOYO DE BECA LLEGUE EN TIEMPO Y FORMA.
				POR LO ANTERIOR:</p>
				<p><b>1.</b> LEE CON ATENCIÓN CADA UNA DE LAS CUESTIONES QUE SE TE INDICAN.</p>
				<p><b>2.</b> PROPORCIONA DATOS VERÍDICOS CON LA FINALIDAD DE BENEFICIARTE EN EL PROCESO Y COBRO DE TU BECA  DE ACUERDO A LA SITUACIÓN QUE SE PRESENTE.</p>
				<p><b>3.</b> CUIDA QUE EL CORREO ELECTRÓNICO QUE PROPORCIONES PUEDAS TENER ACCESO A EL, YA QUE AHÍ TE LLEGARÁN NOTIFICACIONES.</p>

		</div>

		<form action="registro_alumno.php" method="POST">
			<div class="form">  <!-- Aqui van los campos de informacion del alumno  -->

	<h2>DATOS ESCOLARES DEL ALUMNO(A)</h2>
	<h5>Datos actuales</h5>

				<div class="grupo"> <!-- BIGINT -->
						<label>Numero de control:</label>					
						<input type="text" onkeypress="return solonumeros(event)"  maxlength="14" name="id" required placeholder="Ingresa 14 Numeros">
				</div>	

				<div class="grupo">   <!-- INT -->				
					<label>Semestre</label>
						<select name="semestre" required>
							<option value="1">1</option> 
							<option value="3">3</option> 
							<option value="5">5</option>
						</select><i></i>
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Grupo:</label> 
						<select name="grupo" required>
							<option value="A">A</option>
							<option value="B">B</option>
							<option value="C">C</option>
						</select><i></i>
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Especialidad:</label>				
						<select select name="especialidad" required>
								<option value="Preparación de Alimentos y Bebidas">Preparación de Alimentos y Bebidas</option>
								<option value="Contabilidad">Contabilidad</option>
								<option value="Programación">Programación</option>
								<option value="Soporte y Mantenimiento de Equipo de Computo">Soporte y Mantenimiento de Equipo de Computo</option>
								<option value="Electronica">Electronica</option>
								<option value="Ofimatica">Ofimatica</option>
						</select><i></i>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Turno</label>
						<select name="turno" required>
							<option value="Matutino">Matutino</option>
							<option value="Vespertino">Vespertino</option>
						</select><i></i>
				</div>

	<h2>DATOS DEL ALUMNO(A)</h2>
	<h5>Ingresa todos tus datos en mayusculas</h5>


				<div class="grupo"> <!-- VARCHAR -->
					<label>Curp del estudiante</label>
						<input type="text" onblur="validarInput(this)"  placeholder="Ingrese su CURP" name="resultado" maxlength="18" required> 
						<span id="resultado"></span><!--Condición que valida los 18 caractéres y el orden de los datos del curp-->					
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Paterno</label>	
						<input type="text" required placeholder="Evita usar acentos" onkeypress="return letras(event)" name="apellido_paterno">	<!--Condición para convertir las letras a Mayusculas-->			
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Apellido Materno</label>
					<input type="text" required placeholder="Evita usar acentos" onkeypress="return letras(event)" name="apellido_materno"><!--Condición para convertir las letras a Mayusculas-->
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre(s)</label>
						<input type="text" required placeholder="Evita usar acentos" onkeypress="return letras(event)" name="nombre">
				</div>

				<div class="grupo">  <!-- DATE -->
					<label>Fecha de Nacimiento</label>
						<input type="date" required name="fecha_nacimiento">
				</div>

				<div class="grupo">  <!-- BIGMEDIUM-INT -->
					<label>Número de Celular</label>
						<input type="text" onkeypress="return solonumeros(event)" minlenght="10" maxlength="10" name="celular" required>
				</div>

				<div class="grupo"><!-- BIGMEDIUM-INT -->
					<label>Número de Teléfono de Casa</label>
						<input type="text" onkeypress="return solonumeros(event)" minlenght="10" maxlength="10" name="tel_casa" required>
				</div>

				<div class="grupo">   <!-- VARCHAR -->
					<label>Correo</label>
						<input type="email" name="correo" require required>
				</div>

	<h2>DIRECCIÓN DEL ALUMNO(A)</h2>
	<h5>Asegurate que tus datos sean correctoa</h5>

				<div class="grupo">   <!-- INT -->
					<label>Entidad</label>
						<select name="entidad" required>
							<option value="17">Morelos</option>
				<!-- 			<option value="">Veracrúz</option>
							<option value="">Puebla</option>
							<option value="">Guerrero</option>
							<option value="">Monterrey</option> -->
						</select><i></i>
				</div>

				<div class="grupo"> <!-- INT -->
					<label>Municipio</label>
						<select id="municipio" name="municipio" required> 

							<?php foreach ($JtarMuni as $mun) :   ?>  

							<option id="nombre" value="<?php echo $mun['Cve_Mun']; ?>">

							<?php echo $mun['Nom_Mun']; ?>

							</option>

							<?php endforeach ?> 

						</select><i></i>
				</div>

				<div class="grupo">  <!-- INT -->
					
						<div id="local"></div> <!-- El select se encuentra en consultas.php -->
						<i></i>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de asentamiento</label>
						<select name="tipo_asentamiento" required>
							<option value="Aeropuerto">Aeropuerto</option>  
							<option value="Ampliación">Ampliación</option>
							<option value="Barrio">Barrio</option>
							<option value="Cantón">Cantón</option>
							<option value="Ciudad">Ciudad</option>
							<option value="Ciudad Industrial">Ciudad Industrial</option>
							<option value="Colonia">Colonia</option>
							<option value="Condominio">Condominio</option>
							<option value="Conjunto Habitacional">Conjunto Habitacional</option>
							<option value="Corredor Industrial">Corredor Industrial</option>
							<option value="Coto">Coto</option>
							<option value="Cuartel">Cuartel</option>
							<option value="Ejido">Ejido</option>
							<option value="Ex-Hacienda">Ex-Hacienda</option>
							<option value="Fracción">Fracción</option>
							<option value="Fraccionamiento">Fraccionamiento</option>
							<option value="Granja">Granja</option>
							<option value="Hacienda">Hacienda</option>
							<option value="Ingenio">Ingenio</option>
							<option value="Manzana">Manzana</option>
							<option value="Paraje">Paraje</option>
							<option value="Parque Industrial">Parque Industrial</option>
							<option value="Privada">Privada</option>
							<option value="Prolongación">Prolongación</option>
							<option value="Pueblo">Pueblo</option>
							<option value="Puerto">Puerto</option>
							<option value="Ranchería">Ranchería</option>
							<option value="Rancho">Rancho</option>
							<option value="Región">Región</option>
							<option value="Residencial">Residencial</option>
							<option value="Rinconada">Rinconada</option>
							<option value="Sección">Sección</option>
							<option value="Sector">Sector</option>
							<option value="Supermanzana">Supermanzana</option>
							<option value="Unidad">Unidad</option>
							<option value="Unidad Habitacional">Unidad Habitacional</option>
							<option value="Villa">Villa</option>    
							<option value="Zona Federal">Zona Federal</option>
							<option value="Zona Industrial">Zona Industrial</option>
							<option value="Zona Militar">Zona Militar</option>
							<option value="Zona Naval">Zona Naval</option>
						</select><i></i>
				</div>

				<div class="grupo">  <!-- VARCHAR -->
					<label>Nombre del Asentamiento</label>
						<input type="text" required name="nom_asentamiento">
				</div>

				<div class="grupo">  <!-- INT -->
					<label>Código Postal</label>
					<input type="text" onkeypress="return solonumeros(event)"   minlenght="5" maxlength="5" required name="cp"/>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Tipo de Vialidad</label>
						<select name="tipo_vialidad" required>
							<option value="Ampliacion">Ampliacion</option>
							<option value="Andador">Andador</option>
							<option value="Avenida">Avenida</option>
							<option value="Boulvevard">Boulvevard</option> <!--Of broken dreams? xD ajaja-->
							<option value="Callejón">Callejón</option>
							<option value="Calle">Calle</option>                        
							<option value="Calazada">Calazada</option>
							<option value="Cerrada">Cerrada</option>
							<option value="Circuito">Circuito</option>
							<option value="Circunvalación">Circunvalación</option>
							<option value="Continuación">Continuación</option>
							<option value="Corredor">Corredor</option>
							<option value="Diagonal">Diagonal</option>
							<option value="Eje Vial">Eje Vial</option>
							<option value="Pasaje">Pasaje</option>
							<option value="Peatonal">Peatonal</option>
							<option value="Periférico">Periférico</option>
							<option value="Privada">Privada</option>
							<option value="Prolongación">Prolongación</option>
							<option value="Retorno">Retorno</option>
							<option value="Viaducto">Viaducto</option>
							<option value="Carretera">Carretera</option>
							<option value="Brecha">Brecha</option>
							<option value="Camino">Camino</option>
							<option value="Terracería">Terracería</option>
							<option value="Vereda">Vereda</option>
						</select><i></i>
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Nombre de la vialidad</label>
						<input type="text" name="nom_vialidad" required>
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número exterior</label>
						<input type="text" onkeypress="return solonumeros(event)" name="numero_exterior" placeholder="S/N=Dejalo en blanco" maxlength="6" >
				</div>

				<div class="grupo"> <!-- MEDIUM-INT -->
					<label>Número Interior</label>
						<input type="text" onkeypress="return solonumeros(event)" name="numero_interior" placeholder="S/N=Dejalo en blanco" maxlength="6" >
				</div>

				<div class="grupo"> <!-- VARCHAR -->
					<label>Descripción de la Ubicación</label>
					<input type="text" name="descripcion_ubicacion" required>
				</div>

					<button type="submit" name="enviar">Registarse</button>

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
