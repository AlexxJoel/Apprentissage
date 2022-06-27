$(document).ready(function() {

  console.log('jquery is working!'); //to know if it's working

  // search key type event
  $('#search').keyup(busqueda);
  $('#search').blur(busqueda);

  function busqueda() {
       if($('#search').val()) {
      let search = $('#search').val();
      $.ajax({
        url: 'consultas.php',
        data: {search},
        type: 'POST',
        success: function (response) {
            let template = ''; 
        if(!response.error) {
            let tasks = JSON.parse(response);
            tasks.forEach(task => {
             template += `
             <tr value="${task.nc}" id="consult" >

               <td>${task.nc}</td>             
               <td>${task.curp}</td>
               <td>${task.ap_pa}</td>               
               <td>${task.ap_ma}</td>
               <td>${task.nombre}</td>
               
               <td>
                  <button class="btn btn-info  task-more">Ver mas..</button>
               </td>
             
             </tr> `
           });            
          }
          $('#container').html(template);
        } 
      })
    }
  }




    $(document).on('click', '.task-more', function(event) {
        let element = $(this)[0].parentElement.parentElement;
        let numeroo = $(element).attr('value');

        enviocod(numeroo);

       

   });

    function enviocod(codigo) {
     // $.post('editar.php', {codigo}, function(data,status) {
     //   console.log(data+""+status);
     //   window.location.href = 'editar.php';
         
     // });     
    

    $.post('editone.php', {codigo}, function(data,status) {
       // console.log(data+""+status);
       window.location.href = 'editone.php?codigo='+codigo;
         
     });

}

});
