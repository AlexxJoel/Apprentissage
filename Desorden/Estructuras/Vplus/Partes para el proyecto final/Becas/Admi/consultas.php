<?php 
require '../conexion.php';

$search = $_POST['search'];
if(!empty($search)) {
	$query = "SELECT no_control,curp_alumno,nombre,apellido_materno,apellido_paterno FROM alumnos WHERE no_control LIKE '%$search%'";
	$result = mysqli_query($conex, $query);

	if(!$result) {
		die('Query Error' . mysqli_error($conex));
	}

	$json = array();

	if ($result->num_rows ===0) {

		$json[] = array(
			'nc' => 'Sin coincidencia',
			'curp' => 'Sin coincidencia',
			'nombre' => 'Sin coincidencia',
			'ap_ma' => 'Sin coincidencia',
			'ap_pa' => 'Sin coincidencia'
		);

	} else {
		
		
		while($row = mysqli_fetch_array($result)) {
			$json[] = array(
				'nc' => $row['no_control'],
				'curp' => $row['curp_alumno'],
				'nombre' => $row['nombre'],
				'ap_ma' => $row['apellido_materno'],
				'ap_pa' => $row['apellido_paterno']
			);
		}

	}
	$jsonstring = json_encode($json);
	
	echo $jsonstring;
}



?>