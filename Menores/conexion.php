<?php 
//Conexion  a la base de datos 

/*Necesitamos 4 parametros , Servidor , Usuario 
canotraseña y nombre de la DB*/

//Variable de lso datos 

$Ser= "LocalHost";
$user= "root";
$pass = "";
$db = "datos_alumnos";

//Variable a usar para conexion

$conex = mysqli_connect($Ser,$user,$pass,$db);
