<?php 
include 'conexion.php';

	//Recibir dato de municipio para llenar localidade
	$cvemun=$_POST['cvemunicipio'];

	echo $cvemun;

	// Consulta a las localidades

	$CsltLdad= "SELECT Cve_Loc,Nom_Loc FROM localidades WHERE Cve_Mun= '$cvemun'  ORDER BY Cve_Loc ASC";

	$JtarLdad = mysqli_query($conex,$CsltLdad) or die(mysqli_error($conex));

	$cadena="<label>Localidades</label> 
			<select id='lista2'>";

	while ($ver=mysqli_fetch_row($JtarLdad)) {
		$cadena=$cadena.'<option value='.$ver[1].'>'.utf8_encode($ver[1]).'</option>';
	}

	echo  $cadena."</select>";

 ?>