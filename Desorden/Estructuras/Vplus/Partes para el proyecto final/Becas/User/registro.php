 <?php 
	 require '../conexion.php';
	   // carga de municipios
	$CsltMuni= "SELECT Cve_Mun,Nom_Mun FROM localidades GROUP BY Nom_Mun ORDER BY Cve_Mun";

	 $JtarMuni = mysqli_query($conex,$CsltMuni) or die(mysqli_error($conex));
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>BECASIST44</title>
	<!-- obligatorio -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="type-text" content="text/html" charset="utf-8">
	<!-- palabras clavez cuando se hace la busqueda -->	
	<meta name="Keyword" content="pagina,sencilla,intento">
	<!-- una descripcion de nuestra pagina -->
	<meta name="description" content="Estructura de html etc"> 
	<!-- ponemos el autor -->
	<meta name="author" content="AlexxJ">
	<!-- este es para poner un icono en tu pagina html  -->
	<link rel="ico" href=".ico"><!--16*16px o rel="shortcut icon" type="image/x-icon"-->

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- Mine-->
	<link rel="stylesheet" href="style/validation.css">
	<link rel="stylesheet" type="text/css" href="style/style.css">	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script> 


</head>
<body>	
	<!-- Logo , Bienvenida , Links -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top p-sm-3 border-light bg-dark">
		<!-- el expand es hasta que tamaño aparece toda la barra , el sticki es para que la barra acompañe la pagina 		 -->
		<a href="../index.html" class="navbar-brand">
			<img src="../Image/logo.png" class="d-inline-block align-middle mr-4" alt="Logo-Cetis44" height="60" width="60">CETis 44 
		</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" >
			<span class="navbar-toggler-icon"></span>
		</button>
		<!-- Este boton aparece cuando es para moviles , necesita un id del div para el target -->
		
		<div class="collapse navbar-collapse" id="navbarColor01">
			<div class="container text-center"  >
				<p class="h2 text-uppercase  ml-auto mr-auto" style="color: #fffa"><b>Bienvenido</b></p>
			</div>			
			<div class="navbar-nav  ml-auto  text-center mr-2">
				<!-- <a  class="nav-item nav-link active" href="#holaaaaaa">Inicio</a>   		 -->
				<!-- <a  class="nav-item nav-link " href="#holaaaaaa">Sugerencias</a>   		 -->
				<!-- <a  class="nav-item nav-link " href="#holaaaaaa">Dudas</a>   		 -->
				<!-- <a  class="nav-item nav-link " href="#holaaaaaa">Contacto</a>   		 -->
			</div>
			<div class="d-flex justify-content-center">
				<a  class="btn btn-info mr-3" href="https://www.facebook.com/Cetis-44-168140859877363/">F</a>
				<!-- <a  class="btn btn-danger" href="#Youtube">Y</a> -->
			</div> 
		</div>
	</nav>
	<!-- Modal -->
	<div class="modal fade bd-example-modal-lg"  tabindex="-1" role="dialog" aria-labelledby="myHugeModalLabel" aria-hidden="true" id="ventana-modal"  style="background: rgba(0,0,0,0.8);">
		<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
			<div class="modal-content text-justify text-sm-left  text-md-left border-info bg-light">
				<div class="modal-header " >
					<h5 class="modal-title mx-auto " >PADRÓN DE BECAS</h5>
				</div>
				<div class="modal-body ">					
					<b>ESTIMADO(A) ALUMNO(A):</b>

					<p>ES MUY IMPORTANTE QUE REALICES LA CAPTURA DE ESTE FORMULARIO CON MUCHO CUIDADO Y RESPONSABILIDAD, DE ELLO DEPENDE QUE TU APOYO DE BECA LLEGUE EN TIEMPO Y FORMA.
					POR LO ANTERIOR:</p>
					<p><b>1.</b> LEE CON ATENCIÓN CADA UNA DE LAS CUESTIONES QUE SE TE INDICAN.</p>
					<p><b>2.</b> PROPORCIONA DATOS VERÍDICOS CON LA FINALIDAD DE BENEFICIARTE EN EL PROCESO Y COBRO DE TU BECA  DE ACUERDO A LA SITUACIÓN QUE SE PRESENTE.</p>
					<p><b>3.</b> CUIDA QUE EL CORREO ELECTRÓNICO QUE PROPORCIONES PUEDAS TENER ACCESO A EL, YA QUE AHÍ TE LLEGARÁN NOTIFICACIONES.</p>

					<button  type="button" class="btn btn-block btn-danger" data-dismiss="modal" aria-label="Close">Enterado</button>
				</div>
			</div>
		</div>
	</div>
	<!-- fin modal -->

	<div class="mt-5 pt-5">
		<div class="mt-1">
			<div class="progress mb-3">
			<div class="progress-bar progress-bar-animated bg-danger active p-2" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div></div>
		</div>
		<form  id="regiration_form" method="POST" action="registro_alumno.php">
			<fieldset   class="parte">
				<div class="container card text-gray border-info alert-info"> <!-- Primera seccion -->
	    			<h3 class="text-center mt-0">DATOS ESCOLARES DEL ALUMNO(A)</h3>
	        		<h6 class="text-center">Datos actuales</h6>

			        <div class="row pt-3 container pl-4">
			          <div class="ml-lg-0 ml-3 col-lg-12">

			            <div class="form-group row">
			              <label class="text-lg-right text-left col-form-label col-lg-3" for="id"><b class="text-danger">*</b>Numero de control:</label> 
			              <input  type="text" class="form-control col-lg-9" name="id" id="id" required  maxlength="14" minlength="14" onkeypress="return solonumeros(event)" placeholder="Ingresa 14 Numeros">
			            </div>

			            <div class="form-group row">
			              <label class="text-left text-lg-right  col-form-label col-lg-3"><b class="text-danger">*</b>Semestre:</label> 
			              <select  class="form-control col-lg-9 custom-select" name="semestre" required>
			                <option value="1">1</option>
			                <option value="3">3</option>
			                <option value="5">5</option>                
			              </select>
			            </div>

			            <div class="form-group row">
			              <label class="text-left text-lg-right  col-form-label col-lg-3"><b class="text-danger">*</b>grupo:</label> 
			              <select  class="form-control col-lg-9 custom-select" name="grupo" required>
			                <option value="A">A</option>
			                <option value="B">B</option>
			                <option value="C">C</option>                
			              </select>
			            </div>

			            <div class="form-group row">
			              <label class="text-left text-lg-right  col-form-label col-lg-3"><b class="text-danger">*</b>Especialidad:</label> 
			              <select  class="form-control col-lg-9 custom-select" name="especialidad" required>       
			                <option value="Preparación de Alimentos y Bebidas">Preparación de Alimentos y Bebidas</option>
			                <option value="Contabilidad">Contabilidad</option>
			                <option value="Programación">Programación</option>
			                <option value="Soporte y Mantenimiento de Equipo de Computo">Soporte y Mantenimiento de Equipo de Computo</option>
			                <option value="Electronica">Electronica</option>
			                <option value="Ofimatica">Ofimatica</option>              
			              </select>
			            </div>

			            <div class="form-group row">
			              <label class="text-left text-lg-right  col-form-label col-lg-3"><b class="text-danger">*</b>Turno:</label>  
			              <select  class="form-control col-lg-9 custom-select" name="turno" required>
			                <option value="Matutino">Matutino</option>
			                <option value="Vespertino">Vespertino</option>              
			              </select>
			            </div>
	         		 </div>        
	        		</div>
      			</div><!-- Fin de Primera secciòn -->

      			<div  class="container ">  <!-- Botones -->
				    <div class="row  ">
				      <div class="col-lg-12">
				        <div class="form-group row d-flex justify-content-between mt-3">

        					<input type="button"  class="next btn btn-info btn-block" value="Siguiente" >      

				        </div>           
				      </div>
				    </div>
				</div><!--Fin Botones -->      			
			</fieldset>

			<fieldset  class="parte">
				<div class="container card text<p></p>-gray border-info alert-info"> <!-- Segunda seccion -->
			        <h3 class="text-center py-1 mt-0">DATOS  DEL ALUMNO(A)</h3>
			        <h6 class="text-center">Ingresa todos tus datos en mayusculas</h6>

			        <div class="row pt-3 container pl-4">
				        <div class="ml-lg-0 ml-3 col-lg-12">

				            <div class="form-group row">
				              <label for="curp" class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Curp del  alumno:</label> 
				              <input  type="text" class="form-control col-lg-9" name="curp" id="curp" required maxlength="18" placeholder="Ingrese su curp">
				              <a href="https://www.gob.mx/curp/" class="nav-item btn-link text-danger d-flex ml-auto p-0 my-0">¿No conoces tu CURP?</a>
				            </div>

				            <div class="form-group row mt-0">
				              <label class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Apellido Paterno:</label>  
				              <input  type="text" class="form-control col-lg-9 nombre_pa" name="apellido_paterno" onkeypress="return letras(event)" required placeholder="Evita usar acentos" >
				            </div>

				            <div class="form-group row">
				              <label class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Apellido Materno:</label>  
				              <input  type="text" class="form-control col-lg-9 nombre_ma" name="apellido_materno" onkeypress="return letras(event)" required placeholder="Evita usar acentos">
				            </div>

				            <div class="form-group row">
				              <label class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Nombre(s):</label>
				              <input  type="text" class="form-control col-lg-9 nombre" name="nombre" onkeypress="return letras(event)" required placeholder="Evita usar acentos">
				            </div>

				            <div class="form-group row">
				              <label class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Fecha de Nacimiento:</label>
				              <input  type="date" class="form-control col-lg-9" name="fecha_nacimiento" required id="date">
				            </div>

				            <div class="form-group row">
				              <label class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Número de Celular:</label>
				              <input  type="text" class="form-control col-lg-9" name="celular" onkeypress="return solonumeros(event)" required placeholder="Ingresa numero" maxlength="10" id="celular">
				            </div>

				            <div class="form-group row">
				              <label class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Número de Casa:</label>
				              <input  type="text" class="form-control col-lg-9" name="tel_casa" onkeypress="return solonumeros(event)" required placeholder="Ingresa numero"  maxlength="10" id="tel_casa">
				            </div>

				            <div class="form-group row">
				              <label class="text-lg-right text-left col-form-label col-lg-3 correo"><b class="text-danger">*</b>Correo:</label>
				              <input  type="email" class="form-control col-lg-9 " name="correo" required placeholder="Ingresa correo" id="correo">
				            </div>

				        </div>        
			        </div>
			    </div><!-- Fin de Segunda secciòn -->

			    <div  class="container "><!-- Botones --> 
				    <div class="row  ">
				      <div class="ml-lg-0 col-lg-12">
				        <div class="form-group row d-flex justify-content-between mt-3">

        					<input type="button" name="previous" class="previous btn btn-default col-5 col-md-4 btn-outline-info" value="Previo">
        					<input type="button" name="next" class="next2 btn btn-info col-5 col-md-4" value="Siguiente">      

				        </div>           
				      </div>
				    </div>
				</div><!--Fin Botones -->			    
			</fieldset>

			<fieldset  class="parte" >
				<div class="container card text-gray border-info alert-info"><!-- tercer seccion -->
			        <h3 class="text-center py-1 mt-0">DIRECCIÓN DEL ALUMNO(A)</h3>
			        <h6 class="text-center">Asegurate que tus datos sean correctos</h6>

				    <div class="row pt-3 container pl-4">
				        <div class="ml-lg-0 ml-3 col-lg-12">

			              <div class="form-group row">
			                <label class="text-lg-right text-left col-form-label col-lg-3"><b class="text-danger">*</b>Código Postal:</label>
			                <input  id="cp" type="text" class="form-control col-lg-9" name="cp" required placeholder="Ingresa 5 numeros" onkeypress="return solonumeros(event)" maxlength="5">
			                <a href="https://www.correosdemexico.gob.mx/SSLServicios/ConsultaCP/Descarga.aspx" class="nav-item btn-link text-danger d-flex ml-auto p-0 my-0">¿No conoces tu Codigo Postal?</a>
			              </div>			                

			              <div class="form-group row">
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Tipo de asentamiento:</label>
			                <select class="form-control col-lg-9 custom-select" name="tipo_asentamiento"  id="tpoasent">
			                 </select>
			              </div>  

			              <div class="form-group row">
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Nombre del Asentamiento:</label> 
			                  <select class="form-control col-lg-9 custom-select" name="nom_asentamiento"  id="nombreasent">
			                  </select>
			              </div> 

			              <div class="form-group row">
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Tipo de Vialidad:</label>
			                <select class="form-control custom-select col-lg-9" name="tipo_vialidad" required>
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
			                </select>
			              </div>

			              <div class="form-group row">
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Nombre de la Vialidad:</label> 
			                <input type="text" class="form-control col-lg-9" name="nom_vialidad" required  >
			              </div>  

			              <div class="form-group row">            
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Municipio:</label>
			                <select id="semuni"  class=" col-lg-9 custom-select" name="municipio" required>

			                <?php foreach ($JtarMuni as $mun) :   ?>  

			                  <option value="<?php echo $mun['Cve_Mun']; ?>">
			                  <?php echo $mun['Nom_Mun']; ?>
			                  </option>

			                <?php endforeach ?> 

			                </select>
			              </div>  

			              <div class="form-group row">
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Localidad:</label>
			                <select  id="localidades"  class="form-control col-lg-9 custom-select" name="localidades" required>   
			                </select>
			              </div>

			              <div class="form-group row">
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Entidad:</label> 
			                <select name="entidad"  class="form-control col-lg-9 custom-select" name="entidad" required>
			                  <option id="entidad"><option>   
			                </select>
			              </div>

			              

			              <div class="row">
			                <div class="col-lg-6">
			                  <div class="form-group row">
			                    <label class="text-left text-lg-right  col-form-label col-lg-6">Número exterior:</label>  
			                    <input type="text" class="numeteriro form-control col-lg-6" name="numero_exterior"  onkeypress="return solonumeros(event)" placeholder="S/N=Dejalo en blanco" maxlength="6" >
			                  </div>
			                </div>
			                <div class="col-lg-6">
			                <div class="form-group row">
			                  <label class="text-left text-lg-center col-form-label col-lg-6">Número Interior:</label>  
			                  <input type="text" class="numeteriro form-control col-lg-6" name="numero_interior" onkeypress="return solonumeros(event)"placeholder="S/N=Dejalo en blanco" maxlength="6" >
			                </div>                  
			                </div>
			              </div>

			              <div class="form-group row">
			                <label class="text-left text-lg-right col-form-label col-lg-3"><b class="text-danger">*</b>Descripción de la Ubicación:</label> 
			                <input type="text" class="form-control col-lg-9" name="descripcion_ubicacion" placeholder="Tiendas/Areas verdes/Iglesias" required> 
			              </div>
			              </div>      
			       
				        </div>
				   	</div>	

					<div  class="container  bg-transparent">  <!-- Botones -->
					    <div class="row  ">
					      <div class="col-lg-12">
					        <div class="form-group row d-flex justify-content-between mt-3">
	        					
	        					<input type="button" name="previous" class="previous btn-outline-info btn btn-default col-5 col-md-4 " value="Previo" >
	        					<button class=" btn btn-danger col-5 col-md-4"  type="submit" name="enviar">
	        						Registrarse
	        					</button>
	        					

					        </div>           
					      </div>
					    </div>
					</div><!--Fin Botones -->		        
			    </div><!-- Fin de tercer secciòn -->
			</fieldset>			
		</form>
	</div>

<!-- Mine -->

<script type="text/javascript" src="js/Funciones.js"></script>
<script type="text/javascript" src="js/step-step.js"></script>
<script type="text/javascript" src="js/condiciones.js"></script>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>
