<?php 

require '../conexion.php';


$numero = $_POST['codigo'];

$clselimi= "DELETE FROM alumnos WHERE no_control= '$numero'"; 

        $JtarDelete= mysqli_query($conex,$clselimi) or die(mysqli_error($conex));

        if (!$JtarDelete) {
            
            $data = 'fallo';


            
        }else{

            $data = 'exito';
            
        }

        echo $data;

 ?>