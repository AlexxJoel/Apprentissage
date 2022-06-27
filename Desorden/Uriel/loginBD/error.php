<?php
session_start();
?>
<!DOCTYPE html>
 
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Error</title>
	<?php include 'css/css.html'; ?> 
</head>
<body>
<div class="form">
	<div class="alert alert-danger" role="alert"><h1>¡AVISO!</h1></div>

	<p>
		<?php
		if(isset($_SESSION['message']) AND !empty($_SESSION['message'] )){
			echo "<p class = 'alert alert-danger' >".$_SESSION['message']."</p>";

		}else{
			header("Location: index.php");
			exit();

		}
		?>
	</p>
	<a href="index.php"><button class="button button-block"/>INICIO</button></a> 

</div>
</body>
</html>