<?php 
//Conexion  a la base de datos 

/*Necesitamos 4 parametros , Servidor , Usuario 
canotraseña y nombre de la DB*/

//Variable de lso datos 

$Ser= "LocalHost";
$user= "root";
$pass = "alejandro";
$db = "datos_alumnos";

//Variable a usar para conexion

$conex = mysqli_connect($Ser,$user,$pass,$db);

 // Podemos comprobar si se conecto exitosamente

	if(isset($_POST['db'])){ //Si hace click en el boton con name = r 
			
 		if (!$conex) { //Comprobamos si no se conecto 

 		 	echo "No se conecto a base de datos";
 		
 		}else{ //si se conecto
 		
 			echo "Conexion a base de datos correctamente";
		
 		}
 		
 		echo "<br> <a href='prueba de conexion correcta.html'>click para regresar</a> "; 
 	}