<?php require_once('conexion.php') ; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta  http-equiv="content-Type" content="text/html" charset="utf-8">
    <meta name="Author" content="Miguel,Joel">
    <title>Registro a becas</title>
    </head>
<body>

    <!-- Incio de php sentencia if al dar click en registrar -->
<?php if (isset($_POST['registar'])) {  
            /*Obtenemos los datos que envio el usuiario con el name de cada imput*/
        
            $nmcntrol   =$_POST['1'];
            $smstre     =$_POST['2'];
            $grpo       =$_POST['3'];
            $spcldad    =$_POST['4'];
            $trno       =$_POST['5'];
            $curp       =$_POST['6'];
            $aplldoP    =$_POST['7'];
            $aplldoM    =$_POST['8'];
            $nmbre      =$_POST['9'];
            $fechancmnto=$_POST['10'];
            $telMvil    =$_POST['11'];
            $telCsa     =$_POST['12'];
            $correoE    =$_POST['13'];
            $entdad     =$_POST['14'];
            $Mncpio     =$_POST['15'];
            $lcldad     =$_POST['16'];
            $asntmntotpo=$_POST['16'];
            $asntmntonmbre=$_POST['18'];
            $cdgopstal  =$_POST['19'];
            $vldadtpo   =$_POST['20'];
            $vldadnmbre =$_POST['21'];
            $numext     =$_POST['22'];
            $numint     =$_POST['23'];
            $dscpubic   =$_POST['24'];

            

            // Datos que se quieren mandar a la tabla 
            //Ponemos como se llama cada campo de la base de datos mas l variable que guardo los datos

            $insertar = "INSERT INTO alumnos
            (no_control,semestre,grupo,especialidad,turno,curp_alumno,apellido_paterno,apellido_materno,nombre,fecha_nacimiento,telefono_celular,telefono_casa,correo_electronico,entidad,municipio,localidad,tipo_asentamiento,nombre_asentamiento,codigo_postal,tipo_vialidad,nombre_vialidad,numero_exterior,numero_interior,
            descripcion_ubicacion) VALUES ('$nmcntrol','$smstre','$grpo','$spcldad','$trno','$curp','$aplldoP','$aplldoM','$nmbre','$fechancmnto','$telMvil','$telCsa','$correoE','$entdad','$Mncpio','$lcldad',
            '$asntmntotpo','$asntmntonmbre','$cdgopstal ','$vldadtpo','$vldadnmbre','$numext','$numint','$dscpubic')";

            // Lo introduciomos a la DB con query 
            //agregamos la variable que se conecto a la base de datos y la instruccion

            $resul=mysqli_query($conex ,$insertar);

            mysqli_close($conex);   //Cerramos la base de datos 


            header("location:becas_proto.php"); //Comenzamos nuevamente el ciclo
         
        }
    ?>
    

</body>
</html>