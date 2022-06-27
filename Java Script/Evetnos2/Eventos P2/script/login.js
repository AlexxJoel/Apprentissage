  var formulario = document.getElementById('form');
function envia() {	
	var u = document.getElementById('usuario').value;
	var c = document.getElementById('contra').value;

	if (u=="" || c=="") {
		alert('Llenaar campos')
	}else if (u=="joel" && c=="123") {
		alert("Datos correctos"); 
		window.open("HerreraHernandezJoelAlejandro/index.html")
	}else
		alert("Datos Incorrectos"); 
}
 formulario.onreset = function(){          
                    
       document.getElementById('aprovacion').innerHTML = "Campos limpios";         
  }

  // Esta es para la caja de seleccion

var c = document.getElementById('opc');

 c.onchange=function(){ 

 	 var a = document.getElementById('opc').value;
	 	   	if (a=='0') {

 			window.open("event/onabort.html");
 		}else if (a=='1') {
 			window.open("event/onLoad_onUnload.html");
 		}else if (a=='2') {
 			window.open("event/onresize_onscroll.html");
 		}else if (a=='3'){
 			window.open("event/onselect_onchange.html")
 		}
                           //EVENTO ONCHANGE
              
}



