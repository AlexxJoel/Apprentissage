<!DOCTYPE html>
<html>
<head>
	<title>BECASIST44</title>
</head>
<body>
	<script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script> 

	<?php  

	function correcto()
	{
		?>

		<script type='text/javascript'>
			Swal.fire({
				title: 'Tu registro ha sido exitoso!!',	
				position: 'center',
				icon: 'success',				
				confirmButtonText: 'Ok',
				}).then((result) => {
				 if (result.isConfirmed) {
				    window.location.href='../index.html';
				    
				  } 
				})

			</script>
			<?php 
		}

		function incorrecto()
		{
			?>

			<script type='text/javascript'>

				Swal.fire({
					icon: 'error',
					title: 'Oops...',
					text: 'Algo salio mal!',
					confirmButtonText: 'Reintentar',
					showDenyButton: true,
					denyButtonText: 'Cancelar',
					}).then((result) => {
					 if (result.isConfirmed) {
					    window.location.href='registro.php';
					  } else if (result.isDenied) {
					  	window.location.href='https://www.google.com.mx';
  					 }
					})
			
			</script>
			<?php 
		}



		?>
	</body>
	</html>