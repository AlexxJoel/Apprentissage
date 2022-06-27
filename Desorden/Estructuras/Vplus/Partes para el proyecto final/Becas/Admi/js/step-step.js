 $(document).ready(function(){
  

     console.log('jquery is working!'); //to know if it's working

      $('.disabled').attr('disabled', true);     


      $('#regiration_form').on('submit', function(event) {
       event.preventDefault();

          $('#actualizar').click(function(event) {


                   const datos = {
                      id:$('#id').val(),
                      semestre:$('#semestre').val(),
                      grupo:$('#grupo').val(),
                      especialidad:$('#especialidad').val(),
                      turno:$('#turno').val(),
                      curp:$('#curp').val(),
                      correo:$('#correo').val(),
                      apellido_paterno:$('#apellido_paterno').val(),
                      apellido_materno:$('#apellido_materno').val(),
                      nombre:$('#nombre').val(),
                      fecha_nacimiento:$('#fecha_nacimiento').val(),
                      celular:$('#celular').val(),
                      tel_casa:$('#tel_casa').val(),
                      cp:$('#cp').val(),
                      tipo_asentamiento:$('#tipo_asentamiento').val(),
                      nom_asentamiento:$('#nom_asentamiento').val(),
                      municipio:$('#municipio').val(),
                      localidades:$('#localidades').val(),
                      entidad:$('#entidad').val(),
                      tipo_vialidad:$('#tipo_vialidad').val(),
                      nom_vialidad:$('#nom_vialidad').val(),
                      numero_exterior:$('#numero_exterior').val(),
                      numero_interior:$('#numero_interior').val(),
                      descripcion_ubicacion:$('#descripcion_ubicacion').val()
                 };

                 // console.log(datos)
              $.post('actualizar.php', {datos},(response)=>{

                 console.log(response)  //pendiente no sirve

                  if (response="exito") {

                    // alert('ñaaam')

                        Swal.fire({
                          title: 'Guardado correctmente', 
                          position: 'center',
                          icon: 'success',        
                          confirmButtonText: 'Ok',
                          }).then((result) => {
                           if (result.isConfirmed) {
                              window.location.href='search.php';
                              
                            } 
                          })


                   }else if (response == "fallo"){
                        Swal.fire({
                          title: 'Fallo', 
                          position: 'center',
                          icon: 'warning',        
                          confirmButtonText: 'Ok',
                          })
                   }
                  });
                      
          });///boton de guardar



          $('#eliminar').click(function(event) {
            codigo = $('#id').val();

             Swal.fire({
              title: '¿Realmente quieres eliminar este registro?',
              showCancelButton: true,
              confirmButtonText: `Confirmar`,
              cancelButtonText: `Cancelar`,
            }).then((result) => {
              if (result.isConfirmed) {


                $.post('eliminar.php', {codigo},(response)=> {

                   if (response == "si") {

                        Swal.fire({
                          title: 'Eliminado correctmente', 
                          position: 'center',
                          icon: 'success',        
                          confirmButtonText: 'Ok',
                          }).then((result) => {
                           if (result.isConfirmed) {
                              window.location.href='search.php';
                              
                            } 
                          })


                   }else if (response == "no"){
                        Swal.fire({
                          title: 'No se pudo eliminar', 
                          position: 'center',
                          icon: 'warning',        
                          confirmButtonText: 'Ok',
                          })
                   }
                  
                });

              } else {
                Swal.fire('Operacion cancelada', '', 'info')
              }
            })
                          
          });


     });

      $('#edit').click(function(event) {

        Swal.fire({
        title: 'Ahora puedes comenzar editar', 
        position: 'center',
        text: 'Cuidado..!',
        icon: 'info',        
        confirmButtonText: 'Ok',
        }).then((result) => {
         if (result.isConfirmed) {
           
             $('.disabled').attr('disabled', false); 
              current_step = $(this).parent();
            next_step = $(this).parent().parent().parent().parent().parent().prev();   

            next_step.show(); 
            $('.parte').collapse('toggle') 

            current_step.parent().parent().parent().parent().hide();
            current
            setProgressBar(--current);            
          } 
        })   
       
   });
  

//********************************** PASO A PASO FORMULARIO *****************************************

    $('.parte').collapse('toggle')
   var current = 1,current_step,next_step,steps;
   steps = $("fieldset").length;
   $(".next").click(function(){
    current_step = $(this).parent();
    next_step = $(this).parent().parent().parent().parent().parent().next();
    next_step.show();

    current_step.parent().parent().parent().parent().hide();
    $('.parte').collapse('toggle')  

    setProgressBar(++current);
  });


   $(".previous").click(function(){
    current_step = $(this).parent();
    next_step = $(this).parent().parent().parent().parent().parent().prev();   

    next_step.show(); 
    $('.parte').collapse('toggle') 

    current_step.parent().parent().parent().parent().hide();
    setProgressBar(--current); 

  });

   setProgressBar(current);
  	// Change progress bar action
  	function setProgressBar(curStep){
  		var percent = parseFloat(100 / steps) * curStep;
  		percent = percent.toFixed();
  		$(".progress-bar")
     .css("width",percent+"%")
     .html(percent+"%");		
   }     

});
