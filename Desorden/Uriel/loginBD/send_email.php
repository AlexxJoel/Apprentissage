<?php

	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	//Load Composer's autoloader
	require 'vendor/autoload.php';

	function sendEmail($para_usuario, $subject, $message_body){
    
	$mail = new PHPMailer(true);                              //passing   `true` enables exceptions 
	try { 

		$fromemail='joelherreraxd10@gmail.com';
   		$password = 'tumblepop';		

   		// $fromemail='posadmorgan202@gmail.com';
   		// $password ='posada123canadamape32';

		$mail->isSMTP();  
   		
   		$mail->SMTPDebug = 3;                    
		                                    //Set mailer to use SMTP
		$mail->Host = 'smtp.gmail.com';      //Specify main and backup SMTP servers 
		$mail->SMTPAuth = 'login';                 //Enable SMTP authentication 
		$mail->Username = $fromemail;     //SMTP username 
		$mail->Password = $password;   //SMTP password 

		$mail->SMTPSecure = 'tls';                  //Enable TLS encryption, `ssl` also accepted 
		$mail->Port = '587';               //TCP port to connect to   
 
 //Recipients
		$mail->setFrom($fromemail, 'Bienvenido');
		$mail->addAddress($para_usuario);

		$mail->isHTML(true);                             //set email format to HTML
		$mail->Subject = $subject; 
		$mail->Body = $message_body;

		$mail->send();
		echo 'Mensaje fue enviado';
	} catch (Exception $e){
		echo ' Mensaje no puede ser enviado. Mailer Error:  ';
	}


	}
 ?>