<?php 
require '../../conexion.php';


if (isset($_POST['cod'])) {	

	$search = $_POST['cod'];

	if(!empty($search)) {

		$query = "SELECT * FROM codigos_postales WHERE codigo_postal = '$search'";
		
		$result = mysqli_query($conex, $query);


		if ($result->num_rows ===0) {

			$jsonstring = 'null';

		} else {
			$json = array();
			
			
			while($row = mysqli_fetch_array($result)) {
				$json[] = array(
					
					'asentamiento' => $row['asentamiento'],
					'tpoAsntmnto' => $row['tipo_asenta']
				);

				
			}

			$jsonstring = json_encode($json);

		}
		

		echo $jsonstring;
	}

}elseif(isset($_POST['muni'])) {

	$municipio = $_POST['muni'];

	
	$CsltLdad= "SELECT * FROM localidades WHERE Cve_Mun= '$municipio' ORDER BY Cve_Loc ASC";

	$JtarLdad = mysqli_query($conex,$CsltLdad) or die(mysqli_error($conex));

	$json2 = array();


	while($row = mysqli_fetch_array($JtarLdad)) {
		$json2[] = array(

			'localidad' => $row['Nom_Loc'],
			'cve_localidad' => $row['Cve_Loc'],
			'entnum' => $row['Cve_Ent'],
			'ent' => $row['Nom_Ent']			

		);
	}


	$jsonst = json_encode($json2);

	echo $jsonst;
}





?>