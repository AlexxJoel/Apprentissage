
function carga(){                               //FUNCION QUE CARGA EL EVENTO ONLOAD
    alert("ESTIMADO(A) ALUMNO(A): \n\n"+" ES MUY IMPORTANTE QUE REALICES LA CAPTURA DE ESTE FORMULARIO CON MUCHO CUIDADO Y RESPONSABILIDAD, DE ELLO DEPENDE QUE TU APOYO DE BECA LLEGUE EN TIEMPO Y FORMA.")
    alert("POR LO ANTERIOR:\n\n"+" 1. LEE CON ATENCIÓN CADA UNA DE LAS CUESTIONES QUE SE TE INDICAN.\n\n"+" 2. PROPORCIONA DATOS VERÍDICOS CON LA FINALIDAD DE BENEFICIARTE EN EL PROCESO Y COBRO DE TU BECA  DE ACUERDO A LA SITUACIÓN QUE SE PRESENTE.\n\n"+" 3. CUIDA QUE EL CORREO ELECTRÓNICO QUE PROPORCIONES PUEDAS TENER ACCESO A EL, YA QUE AHÍ TE LLEGARÁN NOTIFICACIONES.")
}



  $(document).ready(function(){
		recargarLista(); //Vamos a recargar el select a un div

		$('#lista1').change(function(){ //activar la funcion cada que se hga un cambio en la lista
			recargarLista();
		});

	})


	function recargarLista(){ //pasamos datos a php
		$.ajax({
			type:"POST",
			url:"consultas.php", //lo mandamos al archivo
			data:"cvemunicipio=" + $('#lista1').val(),
			success:function(r){
				$('#select2lista').html(r); //Si tiene algo lo va a mandar al div 
			}
		});
	}


