$(document).ready(function() {

// ********************************* CP PARA AUTORELLENAR******************************************
 
   $('.numeteriro').click(function() {
    
         const Toast = Swal.mixin({
          toast: true,
          position: 'top-end',
          showConfirmButton: false,
          timer:4000,
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })

         Toast.fire({
          icon: 'info',
          title: 'Si no tienes numero exterior ni interior dejarlo en blanco'
        })
  });


  $('#cp').change(function() {

    let  codigopostal = $('#cp').val();

    if (codigopostal!=="") {
      enviocp(codigopostal);
    }else{
      $('#nombreasent').html('');
      $('#tpoasent').html('');
      $('#cp').removeClass('is-valid');
       $('#cp').removeClass('is-invalid');
    }

    // console.log(codigopostal);

    

  });


  $('#semuni').change(function(){ 

    let muni = $('#semuni').val();

    // console.log(muni);

    recargarLista(muni);
  });


  function enviocp(cod) {
   $.ajax({
    url: 'consultas.php',
    data: {cod},
    type: 'POST',
    success: function (response) {

      // console.log (response)      

      if (response=="null") {
        Swal.fire({
          icon: 'error',
          title: 'Oops...',
          text: 'Este codigo postal no existe',
          
        })

        $('#cp').addClass('is-invalid');
        $('#cp').removeClass('is-valid');      

     
        $('#nombreasent').html('');
        $('#tpoasent').html('');

      }else if(!response.error) {

        let tasks = JSON.parse(response);
        tem_nom_asent = '';
        tem_tipo_asent = '';

        tasks.forEach(task => {

        tem_nom_asent += `
                     <option value="${task.asentamiento}"> ${task.asentamiento}</option>
                    `; 

         tem_tipo_asent += `
                     <option value="${task.tpoAsntmnto}"> ${task.tpoAsntmnto}</option>
                    ` ;

        
       });
        $('#nombreasent').html(tem_nom_asent);
        $('#tpoasent').html(tem_tipo_asent);

         $('#cp').addClass('is-valid');
        $('#cp').removeClass('is-invalid');
      }
    } 
  })
 }





 function recargarLista(muni){ //pasamos datos a php
    $.ajax({
      type:"POST",
      url:"consultas.php", //lo mandamos al archivo
      data:{muni},
      success:function(resp){
        // console.log(resp);

        template= '';
        let loca = JSON.parse(resp);

        loca.forEach(locali => {

         $('#entidad').val(locali.entnum);
        $('#entidad').html(locali.ent);


 
        template += `
                  <option id="localidad" value="${locali.cve_localidad}">${locali.localidad}</option>
                 ` 
        });  

        $('#localidades').html(template);

      }
    });
  }


});










