 $(document).ready(function(){
  
     console.log('jquery is working!'); //to know if it's working
  
//****************************** PODRAS VER EL MODAL QUE DICE LAS REGLAS*******************************
   $('#ventana-modal').modal({
    backdrop:false,
    keyboard:false,
   });

//********************************** PASO A PASO FORMULARIO *****************************************

    $('.parte').collapse('toggle')
   var current = 1,current_step,next_step,steps;
   steps = $("fieldset").length;
   setProgressBar(current);


   previous();

   $('.next').click(function(){
       var curp = $('#curp').val();
       var correo = $('#correo').val();
      var id = $('#id').val();
      if (id ==="" || curp =="" ||  correo=="" ) {
          Swal.fire('Llena todos los campos obligatorios ')   
       }else{

        current_step = $(this).parent();
        next_step = $(this).parent().parent().parent().parent().parent().next();
        next_step.show();

        current_step.parent().parent().parent().parent().hide();
        $('.parte').collapse('toggle')  

        setProgressBar(++current);
      }
    });
  $('.next2').click(function(){
       var correo , curp ,celular,tel_casa,date,nombre,mom,dad
       tel_casa = $('#tel_casa').val();
       celular = $('#celular').val();
       date = $('#date').val();
       nombre = $('.nombre').val();
       mom = $('.nombre_ma').val();
       dad = $('.nombre_pa').val();
       // console.log( correo , curp ,celular,tel_casa,date,nombre,mom,dad)

      if (tel_casa=="" || celular=="" || date=="" || nombre=="" || dad=="" || mom=="") {
          Swal.fire('Llena todos los campos obligatorios ');   
       }else{

        current_step = $(this).parent();
        next_step = $(this).parent().parent().parent().parent().parent().next();
        next_step.show();

        current_step.parent().parent().parent().parent().hide();
        $('.parte').collapse('toggle')  

        setProgressBar(++current);
      }
    });
  

  function previous() {
    $('.previous').click(function(){
    current_step = $(this).parent();
    next_step = $(this).parent().parent().parent().parent().parent().prev();   

    next_step.show(); 
    $('.parte').collapse('toggle') 

    current_step.parent().parent().parent().parent().hide();
    setProgressBar(--current); 

    });
  }
   


	// Change progress bar action
	function setProgressBar(curStep){
    console.log(curStep)
		var percent = parseFloat(100 / steps) * curStep;
		percent = percent.toFixed();
		$(".progress-bar")
   .css("width",percent+"%")
   .html(percent+"%");		
 }     

});
