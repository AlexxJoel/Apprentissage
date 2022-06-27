$(document).ready(function() {

    $('#actu').on('submit', function(event) {
        event.preventDefault();
        $('#actudirec').click(function(event) {
           // console.log('click')
           var cod = $('#codigo').val();
           window.location.href = '../editone.php?codigo='+cod;
        
           
         });        
    });


    $('#actuar').on('submit',  function(event) {
        event.preventDefault();
        $('#elimidirec').click(function(event) {
            var codigo = $('#codigoe').val();

            console.log(codigo)

             Swal.fire({
              title: '¿Realmente quieres eliminar este registro?',           
              showCancelButton: true,
              confirmButtonText: `Confirmar`,
              cancelButtonText: `Cancelar`,
            }).then((result) => {
              if (result.isConfirmed) {


                $.post('../eliminar.php', {codigo},(response)=> {
                  console.log(response)


                   if (response == "exito") {


                        Swal.fire({
                          title: 'Eliminado correctmente', 
                          position: 'center',
                          icon: 'success',        
                          confirmButtonText: 'Ok',
                          }).then((result) => {
                           if (result.isConfirmed) {
                              window.location.href='elimi.php';
                              
                            } 
                          })


                   }else if (response == "fallo"){
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
});