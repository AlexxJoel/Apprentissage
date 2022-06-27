$(document).ready(function() {


    console.log('It´s working');//check jquery
    chek()


//********************Revisamos si hay campos vacios******************
    $('#password').keyup(chek);
    $('#user').keyup(chek);

    $('#password').change(chek);
    $('#user').change(chek);


    function chek() {
        var user = $('#user').val(); 
        var pass = $('#password').val();

        if (user !=="" && pass!=="") {
           $('#logine').attr('disabled', false);
           $('#logine').removeClass('btn-outline-primary');
           $('#logine').addClass('btn-primary');
        } else {
           $('#logine').addClass('btn-outline-primary');
           $('#logine').removeClass('btn-primary');
           $('#logine').attr('disabled', true);
        }
    }
//********************Envio de formulario******************
$('#logeo_form').on('submit', function(e) {

    e.preventDefault();

    var user = $.trim($('#user').val());
    var pass = $.trim($('#password').val());

    $.ajax({
            url: 'verifi.php',
            type: 'POST',
            dataType: 'json',
            data: {user,pass},
            success: function (response) {
              if (response === "null") {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Usuario y/o contraseña no son correctos', 
                })                   
              } else if (response=== "1"){
                Swal.fire({
                title: 'Bienvenido Administrador', 
                position: 'center',
                icon: 'success',                
                confirmButtonText: 'Ok',
                }).then((result) => {
                 if (result.isConfirmed) {
                    window.location.href='admin.php';
                    
                }})
              }
            } 
        })       

});


   
});