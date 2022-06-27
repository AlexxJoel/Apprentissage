<?php 
require '../conexion.php';


if (isset($_POST['cod'])) {	

	$search = $_POST['cod'];

	if(!empty($search)) {

		$query = "SELECT * FROM codigos_postales WHERE codigo_postal = '$search'";
		
		$result = mysqli_query($conex, $query);

		$json = array();

		if ($result->num_rows ===0) {

			$json[] = array(

				'estado' => 'Revisa codigo postal',
				'tpoAsntmnto' => 'Revisa codigo postal',
				'asentamiento' => 'Revisa codigo postal'

				//debemos poner una condicion para que afiuerzas escriban el cp completo (5digitos)

			);

		} else {
			
			
			while($row = mysqli_fetch_array($result)) {
				$json[] = array(
					
					'asentamiento' => $row['asentamiento'],
					'tpoAsntmnto' => $row['tipo_asenta'],
					'estado' => $row['estado']
				);

				
			}

		}
		$jsonstring = json_encode($json);

		echo $jsonstring;
	}

}elseif(isset($_POST['muni'])) {

	$municipio = $_POST['muni'];

	
	$CsltLdad= "SELECT Cve_Loc,Nom_Loc FROM localidades WHERE Cve_Mun= '$municipio' ORDER BY Cve_Loc ASC";

	$JtarLdad = mysqli_query($conex,$CsltLdad) or die(mysqli_error($conex));

	$json2 = array();


	while($row = mysqli_fetch_array($JtarLdad)) {
		$json2[] = array(

			'localidad' => $row['Nom_Loc'],
			'cve_localidad' => $row['Cve_Loc']
		);
	}


	$jsonst = json_encode($json2);

	echo $jsonst;
}





?>