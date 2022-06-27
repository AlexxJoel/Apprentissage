<?php require_once('conexion.php') ;

    $CsltMuni= "SELECT Cve_Mun,Nom_Mun FROM localidades GROUP BY Nom_Mun ORDER BY Cve_Mun";

    $JtarMuni = mysqli_query($conex,$CsltMuni) or die(mysqli_error($conex));

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta  http-equiv="content-Type" content="text/html" charset="utf-8">
	<meta name="Author" content="Joel">
	<title>Becas Estudiantes Nivel superior</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
    <script type="text/javascript" src="../js/Localidad.js"></script>
</head>
<body  onLoad="carga()">
	<header class="encabezado">
		<nav>
			<div class="logo">
				<p><a href="#">Becas</a></p>
			</div>
			<div class="gris"></div>
			<div class="enlaces">
				<ul>
					<!-- en este enlace puede checar sin se conecto bien la base de datos --> 
					<li><a href="prueba de conexion correcta.html">Comprobar conexion a Base datos</a></li>
<!-- 					<li><a href="#">Enlaces</a></li>
					<li><a href="#">Enlaces</a></li>
					<li><a href="#">Enlaces</a></li>
					<li><a href="#">Enlaces</a></li> -->

				</ul>
			</div>
		</nav>
	</header>

	<form action="registro_alum.php" method="POST">
		<div class="form">
			<h1>Bienvenido Registrate</h1>

				<!-- Aqui van los campos de informacion del alumno  -->			
				

			<div class="grupo">
				<input required type="text" name="1"><span class="barra"></span>
				<label>Numero de control:</label>
			</div>
			<!-- Lista dezplegable -->

			<div class="grupo">		
					<select name="semestre" required>
						<option>1</option>
						<option>3</option>
						<option>5</option>
					</select>
					<i></i>
				<span class="barra"></span>
				<label>Semestre</label>
			</div>

			<!-- fin dezplegable -->
			<div class="grupo">
					<select name="grupo" required>
						<option>A</option>
						<option>B</option>
						<option>C</option>
					</select><i></i>
				<span class="barra"></span>
				<label>Grupo:</label>
			</div>

			<div class="grupo">
				<select name="Especialidad">
						<option>PREPARACION DE ALIMENTOS Y BEBIDAS</option>
						<option>CONTABILIDAD</option>
						<option>PROGRAMACION</option>
						<option>SOPORTE Y MANTENIMIENTO DE EQUIPO DE COMPUTO</option>
						<option>ELECTRONICA</option>
						<option>OFIMATICA</option>
						</select><i></i>
				<span class="barra"></span>
				<label>Especialidad:</label>
			</div>

			<div class="grupo">
				<select name="turno" required>
						<option>MATUTINO</option>
						<option>VESPERTINO</option>
					</select><i></i>
				<span class="barra"></span>
				<label>Turno:</label>
			</div>

			<h2>DATOS DEL ALUMNO(A)</h2>

			<div class="grupo">
				<input required type="text" name="6" minlenght="18" maxlength="18" pattern="^([A-Z&]|[a-z&]{1})([AEIOU]|[aeiou]{1})([A-Z&]|[a-z&]{1})([A-Z&]|[a-z&]{1})([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])([HM]|[hm]{1})([AS|as|BC|bc|BS|bs|CC|cc|CS|cs|CH|ch|CL|cl|CM|cm|DF|df|DG|dg|GT|gt|GR|gr|HG|hg|JC|jc|MC|mc|MN|mn|MS|ms|NT|nt|NL|nl|OC|oc|PL|pl|QT|qt|QR|qr|SP|sp|SL|sl|SR|sr|TC|tc|TS|ts|TL|tl|VZ|vz|YN|yn|ZS|zs|NE|ne]{2})([^A|a|E|e|I|i|O|o|U|u]{1})([^A|a|E|e|I|i|O|o|U|u]{1})([^A|a|E|e|I|i|O|o|U|u]{1})([0-9]{2})$">
				<!--Condición que valida los 18 caractéres y el orden de los datos del curp-->
				<span class="barra"></span>
				<label>Curp:</label>
			</div>


			<div class="grupo">
				<input required type="text" pattern="[A-Z]+$" name="9"><span class="barra"></span>
				<label>Nombre:</label>
			</div>

			<div class="grupo">
				<input required type="text" pattern="[A-Z]+$" name="7"><span class="barra"></span>
				<label>Apellido paterno:</label>
			</div>

			<div class="grupo">
				<input required type="text" pattern="[A-Z]+$"" name="8"><span class="barra"></span>
				<label>Apellido materno:</label>
			</div>

			<div class="grupo">
				<input required type="date" name="10"><span class="barra"></span>
				<label>Fecha de Nacimiento:</label>
			</div>

			<div class="grupo">
				<input required type="tel" maxlenght="10"  name="celular" name="11"><span class="barra"></span>
				<label>Telefono Celular:</label>
			</div>

			<div class="grupo">
				<input required type="tel" maxlenght="10" name="12"><span class="barra"></span>
				<label>Telefono Casa:</label>
			</div>

			<div class="grupo">
				<input required type="email" name="13"><span class="barra"></span>
				<label>Correo Electronico:</label>
			</div>

			<h2>DIRECCION DEL ALUMNO(A)</h2>

			<div class="grupo">
				<select name="entidad">
						<option>17.Morelos</option>
					</select><i></i>
				<span class="barra"></span>
				<label>Entidad:</label>
			</div>


			<div class="grupo">
			<select id="lista1" name="lista1" >

                             <?php foreach ($JtarMuni as $mun) :   ?>

                               <option id="nombre" value="<?php echo $mun['Cve_Mun']; ?>">

                                <?php echo $mun['Nom_Mun']; ?>

                              </option>

                            <?php endforeach ?> 


                          </select><i></i>


                 <input type="text"  class="cve" readonly><span class="barra"></span>
				<label>Municipio:</label>
			</div>



			<div class="grupo">
				
					 <div id="select2lista"></div>

                 <input type="text"  class="cve" readonly><span class="barra"></span>		
				<label>Localidad:</label>
			</div>



			<div class="grupo">
				<select name="sentamiento">
						<option>Aeropuerto</option>
						<option>Ampliación</option>
						<option>Barrio</option>
						<option>Cantón</option>
						<option>Ciudad</option>
						<option>Ciudad Industrial</option>
						<option>Colonia</option>
						<option>Condominio</option>
						<option>Conjunto Habitacional</option>
						<option> Corredor Industrial</option>
						<option>Coto</option>
						<option>Cuartel</option>
						<option>Ejido</option>
						<option>Ex Hacienda</option>
						<option>Fracción</option>
						<option>Fraccionamiento</option>
						<option>Granja</option>
						<option>Hacienda</option>
						<option>Ingenio</option>
						<option>Manzana</option>
						<option>Paraje</option>
						<option>Parque Industrial</option>
						<option>Privada</option>
						<option>Prolongación</option>
						<option>Pueblo</option>
						<option>Puerto</option>
						<option>Ranchería</option>
						<option>Rancho</option>
						<option>Región</option>
						<option>Residencial</option>
						<option>Rinconada</option>
						<option>Sección</option>
						<option>Sector</option>
						<option>Supermanzana</option>
						<option>Unidad</option>
						<option>Unidad Habitacional</option>
						<option>Villa</option>
						<option>Zona Federal</option>
						<option>Zona Industrial</option>
						<option>Zona Militar</option>
						<option>Zona Naval</option>
					</select><i></i>
					<span class="barra"></span>
				<label>Tipo de Asentamiento:</label>
			</div>

			<div class="grupo">
				<input required type="text" name="18"><span class="barra"></span>
				<label>Nombre del Asentamiento:</label>
			</div>

			<div class="grupo">
				<input required type="text" name="19"><span class="barra"></span>
				<label>Codigo Postal:</label>
			</div>

			<div class="grupo">
				<select name="vialidad">
						<option>Aeropuerto</option>
						
					</select><i></i>
				<span class="barra"></span>
				<label>Tipo de Vialidad:</label>
			</div>

			<div class="grupo">
				<input required type="text" name="21"><span class="barra"></span>
				<label>Nombre de Vialidad:</label>
			</div>

			<div class="grupo">
				<input required type="text" name="22"><span class="barra"></span>
				<label>Numero exterior:</label>
			</div>

			<div class="grupo">
				<input  type="text" name="23"><span class="barra"></span>
				<label>Numero interior:</label>
			</div>
			
			<div class="grupo">
				<input required type="text" name="24"><span class="barra"></span>
				<label>Descripcion de Ubicacion:</label>
			</div>
		

			<button type="submit" name="registar">Registar</button>
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