function conversion(){
	var c = document.getElementById('opc').value;
	var a = document.getElementById('num1').value;
	if (a=="" ) { //verifica el camo vacio
		alert("El campo esta vacio");
	}else if (isNaN(a)) {  //verifica si es numero 
		alert("No se permiten letras,Ingrese solamente numeros")
	}else if (c=="0") {	 //Es para la distancia			
		var r = parseFloat(a)*0.621371;
		document.getElementById('result').value=r.toFixed(4);
		
	
	}else if (c=="1") {	//pesos a dolare			
		var r = parseFloat(a)*0.041;
		document.getElementById('result').value=r.toFixed(4);
	
	}else if (c=="2") {	//Celsius-Fahrenheit			
		var r = parseFloat(a)* 9/5 + 32 
;
		document.getElementById('result').value=r.toFixed(4);
	
	}else if (c=="3") {		//km/h-m/s		
		var r = parseFloat(a)/3.6;
		document.getElementById('result').value=r.toFixed(4);
	
	}else if (c=="4") {
		document.getElementById('resul').style.display="block";	
		  //horas-dias,semanas			
		var r = parseInt(a)/24;
		var s = r/7;
		document.getElementById('result').value="Dia"+r.toFixed(0) +" Sem"+s.toFixed(0);
		document.getElementById('resul').innerHTML += "Dias: " + r.toFixed(0) +"<br>Semanas: "+s.toFixed(0);

	}

}

			







			






		







