<?php require_once('conexion.php')?>

<?php
    
  if (isset($_POST['enviar'])) 
      
  {
    
        //Recibimos los datos del formulario y los metemos en variables//
    
        //DATOS ALUMNO (ESCUELA)//
    $num_control=$_POST['no_control'];
    $semestre=$_POST['semestre']; //Semestre del alumno
    $grupo=$_POST['grupo'];
    $especialidad=$_POST['especialidad'];
    $turno=$_POST['turno'];
       //DATOS ALUMNO//
    $curp=$_POST['curp'];
    $ap_pat=$_POST['apellido_paterno'];
    $ap_mat=$_POST['apellido_materno'];
    $nombre=$_POST['nombre'];
    $fecnac=$_POST['fecha_nacimiento']; //Fecha de nacimiento
    $celular=$_POST['celular'];
    $tel_casa=$_POST['tel_casa'];
    $correo=$_POST['correo'];
        //DIRECCION ALUMNO//
    $entidad=$_POST['entidad'];
    $municipio=$_POST['lista1'];
    $localidad=$_POST['localidades']; //Joel reviso esto bro, no sé como se llama la lista de las localidades (de la que obtenemos el valor)//
    $asentamiento=$_POST['tipo_asentamiento'];
    $nom_asentamiento=$_POST['nom_asentamiento'];
    $codigo_postal=$_POST['cp'];
    $vialidad=$_POST['tipo_vialidad'];
    $nom_vialidad=$_POST['nom_vialidad'];
    $num_exterior=$_POST['numero_exterior'];
    $num_interior=$_POST['numero_interior'];
    $descripcion=$_POST['descripcion_ubicacion'];


    //CREAMOS LA INSTRUCCIOÓN QUE INSERTA LOS DATOS EN LA TABLA "ALUMNOS"//
    

    $insertar="INSERT INTO alumnos(no_control,semestre,grupo,especialidad,turno,curp_alumno,apellido_paterno,apellido_materno,nombre,fecha_nacimiento,telefono_celular,telefono_casa,correo_electronico,entidad,municipio,localidad,tipo_asentamiento,nombre_asentamiento,codigo_postal,tipo_vialidad,nombre_vialidad,numero_exterior,numero_interior,descripcion_ubicacion) VALUES ('$num_control','$semestre','$grupo','$especialidad','$turno','$curp','$ap_pat','$ap_mat','$nombre','$fecnac','$celular','$tel_casa','$correo','$entidad','$municipio','$localidad','$asentamiento','$nom_asentamiento','$codigo_postal','$vialidad','$nom_vialidad','$num_exterior','$num_interior','$descripcion')";
    
        //ABRIMOS CONEXIÓN E INSERTAMOS DATOS

    $resultado=mysqli_query ($conex,$insertar);
      mysqli_close($conex);

          echo "<script type='text/javascript'>";
        
        echo "alert('Registro exitoso');";

        
    echo "</script>";
     
      

  }



    
    ?>
    