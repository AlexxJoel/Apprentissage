<?php

 require_once('../conexion.php');

  //Recibimos los datos del formulario y los metemos en variables//
    
        //DATOS ALUMNO (ESCUELA)//
    $num_control=$_POST['id'];
    $semestre=$_POST['semestre']; //Semestre del alumno
    $grupo=$_POST['grupo'];
    $especialidad=$_POST['especialidad'];
    $turno=$_POST['turno'];
       //DATOS ALUMNO//
    $curp=$_POST['resultado'];
    $ap_pat=$_POST['apellido_paterno'];
    $ap_mat=$_POST['apellido_materno'];
    $nombre=$_POST['nombre'];
    $fecnac=$_POST['fecha_nacimiento']; //Fecha de nacimiento
    $celular=$_POST['celular'];
    $tel_casa=$_POST['tel_casa'];
    $correo=$_POST['correo'];
        //DIRECCION ALUMNO//
    $entidad=$_POST['entidad'];
    $municipio=$_POST['municipio'];
    $localidad=$_POST['localidades']; //Se encuentra el select en el archivo consultas.php (15)
    $asentamiento=$_POST['tipo_asentamiento'];
    $nom_asentamiento=$_POST['nom_asentamiento'];
    $codigo_postal=$_POST['cp'];
    $vialidad=$_POST['tipo_vialidad'];
    $nom_vialidad=$_POST['nom_vialidad'];
    $num_exterior=$_POST['numero_exterior'];
    $num_interior=$_POST['numero_interior'];
    $descripcion=$_POST['descripcion_ubicacion'];

    
  if (isset($_POST['enviar']))  { 

//CREAMOS LA INSTRUCCIOÓN QUE INSERTA LOS DATOS EN LA TABLA "ALUMNOS"//
    
 $insertar="INSERT INTO alumnos(no_control,semestre,grupo,especialidad,turno,curp_alumno,apellido_paterno,apellido_materno,nombre,fecha_nacimiento,telefono_celular,telefono_casa,correo_electronico,entidad,municipio,localidad,tipo_asentamiento,nombre_asentamiento,codigo_postal,tipo_vialidad,nombre_vialidad,numero_exterior,numero_interior,descripcion_ubicacion) VALUES ('$num_control','$semestre','$grupo','$especialidad','$turno','$curp','$ap_pat','$ap_mat','$nombre','$fecnac','$celular','$tel_casa','$correo','$entidad','$municipio','$localidad','$asentamiento','$nom_asentamiento','$codigo_postal','$vialidad','$nom_vialidad','$num_exterior','$num_interior','$descripcion')";
    
        //ABRIMOS CONEXIÓN E INSERTAMOS DATOS

   $resultado=mysqli_query ($conex,$insertar);


    if ($resultado) {


        echo "<script type='text/javascript'>";
        
        echo "alert('Registro exitoso');"; 

        echo "window.location.href='../index.html'";

        echo "</script>";


         mysqli_close($conex);
        


    }    
      

  }elseif (isset($_POST['revisar'])) {?>

    <!DOCTYPE html>
<html lang="en">
<head>
  <meta  http-equiv="content-Type" content="text/html" charset="utf-8">
  <meta name="Author" content="Joel,Miguel">
  <title>Becas Estudiantes Nivel superior</title>

  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <link rel="stylesheet" type="text/css" href="../css/sstyile.css">

</head>
<body>
  <header class="encabezado">
    <nav>
      <div class="logo">
        <p><a href="../index.html">Becas</a></p>
      </div>
      <div class="gris"> REGÍSTRATE</div>
      <div class="enlaces">
        <!-- <ul>
          <li><a href="#">Acerca De</a></li>
        </ul> -->
      </div>
    </nav>
  </header>

    <div class="Reglas">

        <p><b>ESTIMADO(A) ALUMNO(A):</b>
        ES MUY IMPORTANTE QUE LOS DATOS BRINDADOS SEAN LOS CORRECTOS, POR FAVOR VERIFICA TUS DATOS </p>
        <p><b>1.</b> REVISA CON ATENCIÓN.</p>
        <p><b>2.</b> SI TE EQUIVOCASTE REGRESA A LA PÁGINA ANTERIOR .</p>


    </div>

    <form class="pesmayor" action="registro_alumno.php" method="POST">
      <div class="form">
  
    <h4>DATOS PROPORCIONADOS</h4>

        <div class="pes">   <!-- INT -->  
          <label>Número de control:</label>
            <p><?php echo  $num_control; ?></p>
        </div>        


        <div class="pes">   <!-- INT -->        
          <label>Semestre:</label>
            <p> <?php echo $semestre; ?></p>
        </div>

        <div class="pes">  <!-- VARCHAR -->
          <label>Grupo:</label> 
            <p><?php echo $grupo;  ?></p>
        </div>

        <div class="pes">   <!-- VARCHAR -->
          <label>Especialidad:</label>
            <p> <?php echo $especialidad; ?> </p>
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Turno:</label>
            <p><?php echo $turno; ?></p>
        </div> <br>

        <div class="pes"> <!-- VARCHAR -->
          <label>Curp del estudiante:</label>
            <p><?php echo $curp; ?></p>       
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Apellido Paterno:</label>  
            <p><?php echo $ap_pat; ?></p>  
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Apellido Materno:</label>
            <p><?php echo $ap_mat; ?></p>
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Nombre(s):</label>
            <p><?php echo $nombre; ?></p>
        </div>

        <div class="pes">  <!-- DATE -->
          <label>Fecha de Nacimiento:</label>
            <p><?php echo $fecnac; ?></p>
        </div>

        <div class="pes">  <!-- BIGMEDIUM-INT -->
          <label>Número de Celular:</label>
            <p><?php echo $celular; ?></p>
        </div>

        <div class="pes"><!-- BIGMEDIUM-INT -->
          <label>Número de Teléfono de Casa:</label>
            <p><?php echo $tel_casa; ?></p>
        </div>

        <div class="pes">   <!-- VARCHAR -->
          <label>Correo Electronico:</label>
            <p><?php echo $correo; ?></p>
        </div><br>


        <div class="pes">   <!-- INT -->
          <label>Entidad:</label>
            <p><?php echo $entidad; ?></p>
        </div>

        <div class="pes"> <!-- INT -->
          <label>Municipio:</label>
            <p><?php echo $municipio; ?></p>
        </div>

        <div class="pes">  <!-- INT -->
          <label>Localidad:</label>
            <p><?php echo $localidad; ?></p>
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Tipo de asentamiento:</label>
            <p><?php echo $asentamiento; ?></p>
        </div>

        <div class="pes">  <!-- VARCHAR -->
          <label>Nombre del Asentamiento:</label>
            <p><?php echo $nom_asentamiento; ?></p>
        </div>

        <div class="pes">  <!-- INT -->
          <label>Código Postal:</label>
            <p><?php echo $codigo_postal; ?></p>
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Tipo de Vialidad:</label>
            <p><?php echo $vialidad; ?></p>
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Nombre de la vialidad:</label>
            <p><?php echo $nom_vialidad; ?></p>
        </div>

        <div class="pes"> <!-- MEDIUM-INT -->
          <label>Número exterior:</label>
            <p><?php echo $num_exterior; ?></p>
        </div>

        <div class="pes"> <!-- MEDIUM-INT -->
          <label>Número Interior:</label>
            <p><?php echo $num_interior; ?></p>
        </div>

        <div class="pes"> <!-- VARCHAR -->
          <label>Descripción de la Ubicación:</label>
            <p><?php echo $descripcion; ?></p>
        </div>

          <button type="submit" name="enviar">Registrarse</button>         
          
          
          
      </div>  
    </form>
    
 <?php }  ?>
    