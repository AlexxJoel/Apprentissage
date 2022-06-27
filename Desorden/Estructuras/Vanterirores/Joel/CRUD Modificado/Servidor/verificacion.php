<?php

$usuario=$_POST['usuario']; //Usuario recibido del formulario
$contrase=$_POST['password']; //Contraseña recibida del formulario

$ur="Becas44"; //Usuario real
$cr="1234"; //Contraseña real


if($usuario===$ur and $contrase===$cr)
{
    header("location:CUD.php");
}
else
{
    echo '<script>alert("Acceso Denegado");
	parent.location = "log-in.php"</script>';
	}


?>