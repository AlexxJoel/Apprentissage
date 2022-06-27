<?php 
 require 'conexion.php';
 ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>oda</title>
	<script	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
</head>
<body>
	<div  id="municipios">

		<label>Municipio</label><select id="lista1" name="lista1" >

			<?php 
				
				// Esta es la consulta a los municipios

				$CsltMuni= "SELECT Cve_Mun,Nom_Mun FROM localidades GROUP BY Nom_Mun ORDER BY Cve_Mun";

				$JtarMuni = mysqli_query($conex,$CsltMuni) or die(mysqli_error($conex)); ?>

						<?php foreach ($JtarMuni as $mun) : 
				?>

				 <option id="nombre" value="<?php echo $mun['Cve_Mun']; ?>">

				 	<?php echo $mun['Nom_Mun']; ?>

			 	</option>

			<?php endforeach ?>	


		</select></div>

		<br>

		<div id="select2lista"></div>

		<script type="text/javascript">
		$(document).ready(function(){
		recargarLista();

		$('#lista1').change(function(){
			recargarLista();
		});

	})
</script>
<script type="text/javascript">
	function recargarLista(){
		$.ajax({
			type:"POST",
			url:"consultas.php",
			data:"cvemunicipio=" + $('#lista1').val(),
			success:function(r){
				$('#select2lista').html(r);
			}
		});
	}


</script>

	
</body>
</html>

