<!DOCTYPE html>
<html>
<head>
    <title>BECASIST44</title>
</head>
<body>
    <script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script> 

    <?php  

    function correcto()
    {
        ?>

         <script type='text/javascript'>         
                
                Swal.fire({
                  icon: 'success',
                  title: 'Correo enviado',
                  text: 'Operaciòn exitosa',
                }).then((result) => {
                 if (result.isConfirmed) {
                    window.location.href='correo.php';
                    
                  } 
                })
       
        </script>
            <?php 
        }

        function incorrecto()
        {
            ?>

             <script type='text/javascript'>           
                
            Swal.fire({
              icon: 'error',
              title: 'El correo no puedo ser enviado',
              text: 'Vuelva a intentar',
            })
            
            </script>
            <?php 
        }



        ?>
    </body>
    </html>