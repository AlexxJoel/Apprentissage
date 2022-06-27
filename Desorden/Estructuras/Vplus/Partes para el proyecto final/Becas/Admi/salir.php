<?php        
  require '../conexion.php';
  session_start();
  $usuario =$_SESSION['username'];

  if (!isset($usuario)) {
    
    header("location:login.php");

    exit();
  }

 ?>
<!DOCTYPE html>
<html>
<head>
    <title>BECASIST44</title>
</head>
<body>
    <script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script> 

        <?php session_start(); session_destroy();  ?>

        <script type='text/javascript'>
            Swal.fire({
                title: 'Tu Sesion fue cerrada exitosamente!!', 
                position: 'center',
                icon: 'success',                
                confirmButtonText: 'Ok',
                }).then((result) => {
                 if (result.isConfirmed) {

                    window.location.href='login.php';

 
                    <?php mysqli_close($conex); ?>

                    
                  } 
                })

            </script>

    </body>
    </html>