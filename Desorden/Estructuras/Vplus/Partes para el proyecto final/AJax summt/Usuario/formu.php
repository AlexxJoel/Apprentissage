 <?php require '../conexion.php';
   // carga de municipios
$CsltMuni= "SELECT Cve_Mun,Nom_Mun FROM localidades GROUP BY Nom_Mun ORDER BY Cve_Mun";

 $JtarMuni = mysqli_query($conex,$CsltMuni) or die(mysqli_error($conex));
 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta  http-equiv="content-Type" content="text/html" charset="utf-8">
 	<meta name="Author" content="Joel">
 	<title>Becas Estudiantes Nivel superior</title>

 	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

 </head>
 <body>

<div class="container-fluid row">
	<div class="container col-8">
	<div id="parte3" class="container card text-gray border-info alert-info px-md-4 px-sm-3 px-5 mt-lg-4"> <!-- tercer seccion -->
 		<h3 class="text-center py-1 mt-0">DIRECCIÓN DEL ALUMNO(A)</h3>
 		<h6 class="text-center">Asegurate que tus datos sean correctos</h6>

 		<div class="row pt-3 container">
 			<div class="col-lg-12">

 				<div class="form-group row">
 					<label class="text-lg-right text-left col-form-label col-lg-3">Código Postal:</label>
 					<input  id="cp" type="text" class="form-control col-lg-9">
 				</div>

 				<div class="form-group row">
 					<label class="text-left text-lg-right col-form-label col-lg-3">Entidad:</label>	
 					<select name="entidad"  class="form-control col-lg-9 custom-select">
 						<option id="entidad"><option>		
 						</select>
 					</div>	

 										

 					<div class="form-group row">
 						<label class="text-left text-lg-right col-form-label col-lg-3">Tipo de asentamiento:</label>
 						<select class="form-control col-lg-9 custom-select" >
 							<option id="tpoasent"><option>
 							</select>
 					</div>	

 					<div class="form-group row">
 						<label class="text-left text-lg-right col-form-label col-lg-3">Nombre del Asentamiento:</label>	
 						<input id="nombreasent" type="text" class="form-control col-lg-9" >
 					</div>	

 					<div class="form-group row"> 						
 						<label class="text-left text-lg-right col-form-label col-lg-3">Municipio:</label>
 						<select id="semuni"  class="form-control col-lg-9 custom-select">

						<?php foreach ($JtarMuni as $mun) :   ?>  

							<option value="<?php echo $mun['Cve_Mun']; ?>">

							<?php echo $mun['Nom_Mun']; ?>

							</option>

						<?php endforeach ?> 

 						</select>
 					</div>	

 					<div class="form-group row">
 						<label class="text-left text-lg-right col-form-label col-lg-3">Localidad:</label>
 						<select  id="localidades"  class="form-control col-lg-9 custom-select">		
 						</select>
 					</div>

 					<div class="form-group row">
 						<label class="text-left text-lg-right col-form-label col-lg-3">Tipo de Vialidad:</label>
 						<select class="form-control custom-select col-lg-9">
 							<option></option>
 						</select>
 					</div>

 					<div class="row">
 						<div class="col-lg-6">
 							<div class="form-group row">
 								<label class="text-left text-lg-right  col-form-label col-lg-6">Número exterior:</label>	
 								<input type="text" class="form-control col-lg-6">
 							</div>
 						</div>
 						<div class="col-lg-6">
 							<div class="form-group row">
 								<label class="text-left text-lg-center col-form-label col-lg-6">Número Interior:</label>	
 								<input type="text" class="form-control col-lg-6">
 							</div>									
 						</div>
 					</div>

 					<div class="form-group row">
 						<label class="text-left text-lg-right col-form-label col-lg-3">Descripción de la Ubicación:</label>	
 						<input type="text" class="form-control col-lg-9">
 					</div>
 				</div>				
 			</div>
 		</div><!-- Fin de tercer secciòn -->

	</div>
	
</div>

<!-- 	<ol class="list-group-item">
 		<li class="nav-item">Entidad</li>
 		<li class="nav-item">Municipio</li>
 		<li class="nav-item">locaidad</li>
 		<li class="nav-item">Tipo de asentamiento</li>


 	</ol> -->

 	 <script src="../Js/jquery-3.3.1.min.js"
 	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
 	crossorigin="anonymous"></script>
 	<script type="text/javascript" src="../Js/Funciones.js"></script>

 </body>
 </html>
