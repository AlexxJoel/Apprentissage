<?php

class Conexion{ 

	/* variables de conexión */
	var $ruta;
	var $usuario;
	var $contraseña;
	var $BaseDatos; 

	function Conexion(){
		$this->ruta 		="localhost";
		$this->usuario		="root";
		$this->contraseña	="alejandro";
		$this->BaseDatos	="bdusuarios";
	}

	function conectarse() {

	$enlace=mysqli_connect($this->ruta,$this->usuario,$this->contraseña,$this->BaseDatos);

	
	if ($enlace) {
		// echo "Conexion exitosa";
	}else{
		echo "error";
	}
	return($enlace);
	// mysqli_close();
}
}


?>