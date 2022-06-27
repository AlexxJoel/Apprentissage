<?php 
include '../conexion.php';

	//Recibir dato de municipio para llenar localidade
	$cvemun=$_POST['cvemunicipio'];

	// Consulta a las localidades

	$CsltLdad= "SELECT Cve_Loc,Nom_Loc FROM localidades WHERE Cve_Mun= '$cvemun' ORDER BY Cve_Loc ASC";

	$JtarLdad = mysqli_query($conex,$CsltLdad) or die(mysqli_error($conex));

	$cadena="<label>Localidad:</label> 
			<select name='localidades'>";

			foreach ($JtarLdad as $loca) {
				$cadena=$cadena.'<option value='.$loca['Cve_Loc'].'>'.$loca['Nom_Loc'].'</option>';
			}

	echo  $cadena."</select>";

 ?>