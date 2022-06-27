<?php 
require '../conexion.php';

session_start();


    $usuario=$_POST['user']; //Usuario recibido del formulario
    $pass=$_POST['pass']; //Contraseña recibida del formulario
    $pass=md5($pass);  //123
    //Encriptamos la clave 



    $counte = "SELECT COUNT(*) AS contar FROM user WHERE usuario='$usuario' AND contraseña='$pass'";
    //Checa que tenga datos la tabla lo guarda en la variable contar y esto se va  realizar con las condiciones puestas 
    $log = mysqli_query($conex, $counte); // activamos

    $array = mysqli_fetch_array($log);//oo ponemos en un array


    if ($array['contar']>0) { //checamos que tenga datos 

         $_SESSION['username'] = $usuario;//
         $response = "1";


    }else{      
         $_SESSION['username'] = null;
         $response = "null";
    }

    $jsonst = json_encode($response);

    echo $jsonst;

    exit();

?>