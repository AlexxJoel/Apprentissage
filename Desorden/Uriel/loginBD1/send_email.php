<?php 

	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;
	

	//load composer's autoloader
	require 'vendor/autoload.php';

	function sendEmail($para_usuario,$subject,$message_body){

	$mail = new PHPMailer(true);
		try{
			$mail->isSMPT();  //Set mailer to use SMPT
			$mail->Host = 'smtp.gmail.com'; //Specify main and backup SMTP servers
			$mail->SMTPAuth = true;  //Enable SMTP authenication 
			$mail->Username ='joelherreraxd10@gmail.com'; //SMP username 
			$mail->Password = 'tumblepop'; //SMTP password
			$mail->SMTPSecure ='tls'; //Enable TLS encryption, 'ssl ' also accepted
			$mail->Port = 587; //TCP port to connect to 

			//recipients

			$mail->setFrom('joelherreraxd10@gmail.com','Bienvenido');
			$mail->addAddress($para_usuario);

			$mail->isHTML(true); // Set email format to HTML
			$mail->Subject = $subject;
			$mail->Body = $message_body;

			$mail->send();
			echo "Mensaje Fue enviado";

		} catch (Exception $e) {
			echo 'Mensaje no pudo se enviado.Mailer Error:',$mail->ErrorInfo;
		}
	}
 ?>