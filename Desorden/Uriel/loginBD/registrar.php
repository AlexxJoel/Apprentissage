<?php 

 require "send_email.php";

$_SESSION['nombre'] = $_POST['nombre'];
$_SESSION['apellido'] = $_POST['apellido'];
$_SESSION['email'] = $_POST['email']; 

$nombre = $mysqli->escape_string($_POST['nombre']); 
$apellido = $mysqli->escape_string($_POST['apellido']); 
$email = $mysqli->escape_string($_POST['email']);
$password = $mysqli->escape_string(password_hash($_POST['password'], PASSWORD_BCRYPT)); // $2y$ 
$hash = $mysqli->escape_string(md5(rand(0, 1000))); 

$result = $mysqli->query("SELECT * FROM usuarios WHERE email = '$email'") or die($mysqli->error());

if($result->num_rows > 0){
    $_SESSION['message'] = "Usuario con este correo ya existe!";
    header("Location: error.php"); 
    exit();
    
}else{ 
    $sql="INSERT INTO usuarios(nombre, apellido, email, password, hash)"."VALUES ('$nombre', '$apellido', '$email', '$password', '$hash')"; 
    
    if($mysqli->query($sql)){
        $_SESSION['logged_in'] = true; 
    
        $para_usuario = $email; 
        $subject = 'Verifica tu cuenta (Desarrolla aplicaciones Web con conexión a bases de datos)';
        $message_body = '
            Hola '.$nombre.', 
        Gracias por registrarte! 
            Por favor confirma tu cuenta haciendo click en este link:
        http://localhost/sitio/loginBD/verificar.php?email='.$email.'&hash='.$hash;

        //Aqui vas a poner tu ruta(en el link de arriba ) ejemplo:
        
       # http://localhost/loginBD/verificar.php?email='.$email.'&hash='.$hash;


        sendEmail($para_usuario, $subject, $message_body); 

        header('Location: perfil.php');
        exit();
        
        }else{ 
        $_SESSION['message'] = 'Ocurrió un error!'; 
        header("Location: error.php"); 
        exit();  
    }
}

?>