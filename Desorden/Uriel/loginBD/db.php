<?php 
$host = "localhost"; //***Servidor*/
$user = "root";		 //**Nombre del usuario de la bd */
$pass = "alejandro"; //**Contraseñapara conexion a BD*/
$db = "loginbd";	//**Nombre del esquema/BD*/

$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);

//*******prueba de conexion

// if ($mysqli->connect_errno) {
// 	printf("Error de conexión : %s/n , $mysqli->connect_error");
// 	exit();
// }else{
// 	echo "Conectado";
// }


 ?>