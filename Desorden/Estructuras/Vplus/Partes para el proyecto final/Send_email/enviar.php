<?php 

// var_dump("111111111111111");
// exit();

    include ('Mailer/src/PHPMailer.php');
    include ('Mailer/src/Exception.php');
	include ('Mailer/src/SMTP.php');

try {
    //var to send the email
    $msj= $_POST['msj'];
    $asunto= $_POST['asunto'];
    $correo= $_POST['correo'];


    //var to save for server
    $fromemail='joelherreraxd10@gmail.com';
    $password = 'tumblepop';
    $fromname='Alexx';
    $host='smtp.gmail.com';
    $port='587';
    $SMTPAuth='login';
    $_SMTPSecure='tls';

    $mail=new PHPMailer\PHPMailer\PHPMailer();

    $mail->isSMTP();       


    //Server settings
    $mail->SMTPDebug = 0;                    
    $mail->Host = $host;                   
     $mail->Port  = $port;                             
    $mail->SMTPAuth   = $SMTPAuth;                                  
    $mail->Username   = $fromemail;                    
    $mail->Password   = $password;                               
    $mail->SMTPSecure = $_SMTPSecure;         
   

    //Recipients
    $mail->setFrom($fromemail,$fromname);
    $mail->addAddress($correo); 

    $mail->isHTML(true); 
    $mail->Subject = $asunto;
    $mail->Body    = $msj;

    if (!$mail->send()) {
       echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}"; die();
    }
        echo "Message can be sent"; die();

} catch (Exception $e) {
    
}

 ?>