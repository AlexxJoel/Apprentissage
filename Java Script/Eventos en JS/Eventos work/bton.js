/*Las variables para cada evento*/       
var c=0; d=0; e=0; f=0; g=0; h=0; i=0;
 /*------------------CLICK-----------------*/
    var cl3 = document.getElementById("cl"); /*obtenemos valor del input*/
    cl3.onclick = function() {
   	c=c+1;
	   	if (c<=30) {
	    	document.getElementById("cl2").innerHTML ="<br>"+"Evento  Click: "+c;
	    }else{alert("Llegaste al limite de clicks (30)");}
	 }
 /*------------------DOBLE CLICK-----------------*/
    var db3 = document.getElementById("db"); 
    db3.ondblclick = function() {
    d=d+1;
   		if (d<=15) {
   			document.getElementById("db2").innerHTML ="<br>"+"Evento Doble Click: "+d;
		}else{ alert("Llegaste al limite de dobleclicks (15)");	}
	}
    
    
 /*------------------Mouse Down-----------------*/
    var do3 = document.getElementById("do"); 
    do3.onmousedown  = function() {
    e=e+1;
    document.getElementById("do2").innerHTML ="<br>"+"Evento Mouse down : "+e;
    }
 /*------------------Mouse Out-----------------*/
    var ou3 = document.getElementById("ou"); 
    ou3.onmouseout = function() {
    f=f+1;
    	if (f<=20) {
    		document.getElementById("ou2").innerHTML ="<br>"+"Evento Mouse Out : "+f;
    	}else{alert("Llego al limite de los movimientos Mouse out(20)")}
    }
 /*------------------Mouse Over-----------------*/
    var ov3 = document.getElementById("ov"); 
    ov3.onmouseover = function() {
    g=g+1;
    	if (g<=25) {
    		document.getElementById("ov2").innerHTML ="<br>"+"Evento Mouse over: "+g;
    	}else{ alert("Llegaste al limite de movimientos MOuse over(25)")}
    }
 /*------------------Mouse Move-----------------*/
    var up3 = document.getElementById("up"); 
    up3.onmouseup = function() {
    h=h+1;
    document.getElementById("up2").innerHTML ="<br>"+"Evento Mouse up: "+h;
    }
 /*------------------Mouse Out-----------------*/
    var mo3 = document.getElementById("mo"); 
    mo3.onmousemove = function() {
    i=i+1;
    document.getElementById("mo2").innerHTML ="<br>"+"Evento Mouse Move: "+i;
    }

