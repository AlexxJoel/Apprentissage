const formulario = document.getElementById('regiration_form');
const inputs = document.querySelectorAll('#regiration_form input');

const expresiones = {
    num_control: /^[0-9]{14}$/, // Letras, numeros, guion y guion_bajo
	// telefonos: /^(777)[0-9]{7}$/, // Telefono con lada 777
	curp:/^([A-Z][AEIOUX][A-Z]{2}\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])[HM](?:AS|B[CS]|C[CLMSH]|D[FG]|G[TR]|HG|JC|M[CNS]|N[ETL]|OC|PL|Q[TR]|S[PLR]|T[CSL]|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[A-Z\d])(\d)$/ // 4 a 12 digitos.
	
}


const validarFormulario = (e) => {
	switch (e.target.name) {
		case "id":
			validarCampo(expresiones.num_control, e.target, 'id');

		break;
		case "curp":
			validarCampo(expresiones.curp, e.target, 'curp');
		break;
        // case "celular":
        //     validarCampo(expresiones.telefonos, e.target, 'celular');
        // break;
        // case "tel_casa":
        //     validarCampo(expresiones.telefonos, e.target, 'tel_casa');
        // break;       

	}
}

const validarCampo = (expresion, input, campo) => {

    var place;

   	if (campo==='id') {
      	 place= 'Numero de control';
	}else if(campo=='curp'){
		 place= 'Curp';

	}
    // else if (campo=='celular' || campo=='tel_casa') {
    //      place='numero necesita (777)';
    // }
	if(expresion.test(input.value)){

		
		document.getElementById(`${campo}`).classList.remove('is-invalid');
		document.getElementById(`${campo}`).classList.add('is-valid');

		// document.querySelector(`#grupo_${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
	} else {
		document.getElementById(`${campo}`).classList.add('is-invalid');
		document.getElementById(`${campo}`).classList.remove('is-valid');

		const Toast = Swal.mixin({
          toast: true,
          position: 'top-end',
          showConfirmButton: false,
          timer: 5000,
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })

         Toast.fire({
          icon: 'error',
          title: 'Hey..! Regresa es incorrecto el '+place
        })

		// document.querySelector(`#grupo_${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
	}//Para ver si cumple el dato

    

    //fin de vacios
}

inputs.forEach((input) => {
	input.addEventListener('change', validarFormulario);
	input.addEventListener('blur', validarFormulario);
});

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

function letras(e) { 
	var key = e.keyCode || e.which,
	tecla = String.fromCharCode(key)
	letra = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz", //Este es el campo que define que podemos escribir...en este caso solo del 0 al 9 
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

 function ConfDelete(){

    var respuesta= confirm("¿Estás seguro que deseas eliminar este registro?");
    
    if (respuesta==true){
          var vamos = confirm("¿Deseas Proseguir con la eliminación?");
          if (vamos === true) {

                 return true; }

          else{ 
                  return false}

                   
            }
    else{
            return false;
        }
}


// ***********************DESACTIVE BOTONES*****************************
	


