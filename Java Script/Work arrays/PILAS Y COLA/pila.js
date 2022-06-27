function bl() {
var a = [] ;
 for(var i=0;i<5;i++) {
    a[i]=prompt("Introduce Dato , Informacion"+ i);} 
    a.reverse();
for (var i=0 ; i <5; i++) {
	document.getElementById('pila').innerHTML += "<font  color='black' >  Dato "+i+" es :"+a[i]+"<br></font>";
    //document.write("<div id=cola>Dato "+i+" es :"+a[i]+"<br><div>");
    //console.log("Dato "+i+" es :"+a[i]+"<br>");                           
}}


function cl() {
var pi = [] ;
 for(var i=0;i<5;i++) {
    pi[i]=prompt("Introduce Dato, Info "+ i);}
for (var i=4; i >=0; i--) {
	document.getElementById('pila').innerHTML += "<br><font  color='black' >  Dato "+i+" es :"+pi[i]+"<br></font>";
    //document.write('<br>');
    //document.write('<div>'+"Dato "+i+" es :"+pi[i]+'</div>'); 
    //document.write('<html>'+"Dato "+i+" es :"+pi[i]+'</html>');                        
} }     