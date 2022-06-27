var ed3 = document.getElementById("ed");
var ep3 = document.getElementById("ep");
var eu3 = document.getElementById("eu");     
var c=0; d=0; e=0;

/*KEYDOWN*/
ed3.onkeydown =  function(){
c=c+1;
      if (c<=15) {
            document.getElementById("ed2").innerHTML ="<br>"+"Evento KeyDown: "+c;
      }else{ alert("Sobre paso el limite de tecleado  Down(15)")}   
} 

//---KEYPRESS------------------
ep3.onkeypress =  function(){
d=d+1;
document.getElementById("ep2").innerHTML ="<br>"+"Evento KeyPress: "+d;
} 

//---------KEYUP-------
eu3.onkeyup =  function(){
e=e+1;
      if (e<=10) {
            document.getElementById("eu2").innerHTML ="<br>"+"Evento KeyUp: "+e;
      }else{ alert("Sobre paso el limite de tecleado UP(10)")}
}

