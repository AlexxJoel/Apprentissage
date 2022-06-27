<?php

require '../conexion.php';

session_start();

if (isset($_POST['entara'])) {

	

	$usuario=$_POST['usuario']; //Usuario recibido del formulario
	$pass=$_POST['password']; //Contraseña recibida del formulario


	$counte = "SELECT COUNT(*) AS contar FROM user WHERE usuario='$usuario' AND contraseña='$pass'";
	//Checa que tenga datos la tabla lo guarda en la variable contar y esto se va  realizar con las condiciones puestas 
	$log = mysqli_query($conex, $counte); // activamos

	$array = mysqli_fetch_array($log);//oo ponemos en un array


	if ($array['contar']>0) { //checamos que tenga datos 

		 $_SESSION['username'] = $usuario;//      ?

		  echo '<script>alert("Bienvenido administrador");
		parent.location = "CUD.php"</script>';

	}else{      

	 echo '<script>alert("Acceso Denegado");
		parent.location = "log-in.php"</script>';
	}
}elseif (isset($_POST['salirs'])) {

	session_destroy();
	echo '<script>alert("Sesión cerrada exitosamente");
		parent.location = "../index.html"</script>';
	exit();

}
?>