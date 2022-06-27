<?php 

$host = "localhost"; //Servidro
$user = "root";		 //Nombre del usuario del servidor
$pass = "alejandro";			 //Contraseñapara conexion a BD
$db = "loginbd";	//Nombre de la base de datpos

$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);

//Prueba de conxion

// if ($mysqli->connect_errno) {
// 	printf("Error de conexión : %s/n , $mysqli->connect_error");
// 	exit();
// }else{
// 	echo "Conectado";
// }


 ?>