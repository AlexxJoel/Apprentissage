function al() {
var co = [] ;
 for(var i=0;i<5;i++) {
    co[i]=prompt("Introduce Dato , Dato"+ i);}
for (var i=0 ; i <5; i++) {
	document.getElementById('cola').innerHTML += "<font  color='black' >  Dato "+i+" es :"+co[i]+"<br></font>";
    //document.write("<div id=cola>Dato "+i+" es :"+co[i]+"<br><div>");
    //console.log("Dato "+i+" es :"+co[i]+"<br>");                           
}}     
