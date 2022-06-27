// Inicio de funcion de ajax para enviar valor de select municipio a php
  $(document).ready(function(){
		recargarLista(); //Vamos a recargar el select a un div

		$('#municipio').change(function(){ //activar la funcion cada que se hga un cambio en la lista
			recargarLista();
		});

	})


	function recargarLista(){ //pasamos datos a php
		$.ajax({
			type:"POST",
			url:"consultas.php", //lo mandamos al archivo
			data:"cvemunicipio=" + $('#municipio').val(),
			success:function(r){
				$('#local').html(r); //Si tiene algo lo va a mandar al div 
			}
		});
	}
// Fin de funcion de ajax para enviar valor de select municipio a php

//Inicio de funcion que solo permita numero en los inputs

function solonumeros(e) { 
        var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key)
            numeros = "0123456789", //Este es el campo que define que podemos escribir...en este caso solo del 0 al 9 
            especiales = [8, 37, 39, 46],
            tecla_especial = false;

        for (var i in especiales) {
		    if (key == especiales[i]) {
		            tecla_especial = true;
		        break;
		    }
		}

        if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
        }
}

//Fin de funcion que solo permita numero en los inputs

//Iicio Creamos la función para solo permitir letras mayusculas

function letras(e) { 
	var key = e.keyCode || e.which,
	tecla = String.fromCharCode(key)
	letra = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ ", //Este es el campo que define que podemos escribir...en este caso solo del 0 al 9 
	especiales = [8, 37, 39, 46],
	tecla_especial = false;

	for (var i in especiales) {
		if (key == especiales[i]) {
		tecla_especial = true;
		break;
		}
	}

	if (letra.indexOf(tecla) == -1 && !tecla_especial) {
	return false;
	}
}
//Fin Creamos la función para solo permitir letras mayusculas

 //Inicio Función para validar una CURP
function curpValida(curp) {
    var re = /^([A-Z][AEIOUX][A-Z]{2}\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])[HM](?:AS|B[CS]|C[CLMSH]|D[FG]|G[TR]|HG|JC|M[CNS]|N[ETL]|OC|PL|Q[TR]|S[PLR]|T[CSL]|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[A-Z\d])(\d)$/,
        validado = curp.match(re);
  
    if (!validado)  //Coincide con el formato general?

      return false;
    
    //Validar que coincida el dígito verificador
    function digitoVerificador(curp17) {
        //Fuente https://consultas.curp.gob.mx/CurpSP/
        var diccionario  = "0123456789ABCDEFGHIJKLMNÑOPQRSTUVWXYZ",
            lngSuma      = 0.0,
            lngDigito    = 0.0;
        for(var i=0; i<17; i++)
            lngSuma = lngSuma + diccionario.indexOf(curp17.charAt(i)) * (18 - i);
        lngDigito = 10 - lngSuma % 10;
        if (lngDigito == 10) return 0;
        return lngDigito;
    }
  
    if (validado[2] != digitoVerificador(validado[1])) 
      return false;
        
    return true; //Validado
}

//Lleva la CURP a mayúsculas para validarlo
function validarInput(input) {
    var curp = input.value.toUpperCase(),
        resultado = document.getElementById("resultado"),
        valido = "Tu curp no es valido favor de revisarlo";
        
    if (curpValida(curp)) { // ⬅️ Acá se comprueba
      valido = "Tu curp es valido prosigue con el registro";
        resultado.classList.add("ok");
    } else {
      resultado.classList.remove("ok");
    }
        
    alert(valido);
}
// INCIO funcion para la confirmacion de eliminacion de datos

 function ConfDelete(){

    var respuesta= confirm("¿Estás seguro que deseas eliminar este registro?");
    
    if (respuesta=true)
        {
          var conf= confirm("¡Deseas Proseguir?");
          if (conf=true) {
            return true
          }          
        }
    else
        {
            return false;
        }
}