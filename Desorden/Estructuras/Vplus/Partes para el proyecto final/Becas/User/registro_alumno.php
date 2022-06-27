<?php

 require_once('../conexion.php');
 require_once('alerta.php');


  if (isset($_POST['enviar'])){   
        //Recibimos los datos del formulario y los metemos en variables//
    
        // DATOS ALUMNO (ESCUELA)
    $num_control=$_POST['id'];
    $semestre=$_POST['semestre']; 
    $grupo=$_POST['grupo'];
    $especialidad=$_POST['especialidad'];
    $turno=$_POST['turno'];
       // DATOS ALUMNO
    $curp=$_POST['curp'];



    $ap_p=$_POST['apellido_paterno'];
    $ap_m=$_POST['apellido_materno'];
    $nomb=$_POST['nombre'];
    // mayusculas
    $ap_pat= strtoupper($ap_p);
    $ap_mat= strtoupper($ap_m);
    $nombre= strtoupper( $nomb);

    $fecnac=$_POST['fecha_nacimiento']; 
    $celular=$_POST['celular'];
    $tel_casa=$_POST['tel_casa'];
    $correo=$_POST['correo'];
        // DIRECCION ALUMNO
    $codigo_postal=$_POST['cp'];    
    $entidad=$_POST['entidad'];
    $asentamiento=$_POST['tipo_asentamiento'];
    $nom_asentamiento=$_POST['nom_asentamiento'];
    $municipio=$_POST['municipio'];
    $localidad=$_POST['localidades'];
    $vialidad=$_POST['tipo_vialidad'];
    $nom_vialidad=$_POST['nom_vialidad'];
    $num_exterior=$_POST['numero_exterior'];
    $num_interior=$_POST['numero_interior'];
    $descripcion=$_POST['descripcion_ubicacion'];


    //Echos

      // echo '<p> num_control__'.$num_control.'</p>' ;
      // echo '<p> semestre__'.$semestre.'</p>' ;
      // echo '<p> grupo__'.$grupo.'</p>' ;
      // echo '<p> especialidad__'.$especialidad.'</p>' ;
      // echo '<p> turno__'.$turno.'</p>' ;
      // echo '<p> curp__'.$curp.'</p>' ;
      // echo '<p> ap_mat__'.$ap_mat.'</p>' ;
      // echo '<p> ap_pat__'.$ap_pat.'</p>' ;
      // echo '<p> nombre__'.$nombre.'</p>' ;
      // echo '<p> fecnac__'.$fecnac.'</p>' ;
      // echo '<p> celular__'.$celular.'</p>' ;
      // echo '<p> tel_casa__'.$tel_casa.'</p>' ;
      // echo '<p> correo__'.$correo.'</p>' ;
      // echo '<p> entidad__'.$entidad.'</p>' ;
      // echo '<p> municipio__'.$municipio.'</p>' ;
      // echo '<p> localidad__'.$localidad.'</p>' ;
      // echo '<p> asentamiento__'.$asentamiento.'</p>' ;
      // echo '<p> nom_asentamiento__'.$nom_asentamiento.'</p>' ;
      // echo '<p> codigo_postal__'.$codigo_postal.'</p>' ;
      // echo '<p> vialidad__'.$vialidad.'</p>' ;
      // echo '<p> nom_vialidad__'.$nom_vialidad.'</p>' ;
      // echo '<p> num_exterior__'.$num_exterior.'</p>' ;
      // echo '<p> num_interior__'.$num_interior.'</p>' ;
      // echo '<p> descripcion__'.$descripcion.'</p>' ;


    //CREAMOS LA INSTRUCCIOÓN QUE INSERTA LOS DATOS EN LA TABLA "ALUMNOS"//
    
 $insertar="INSERT INTO alumnos(no_control,semestre,grupo,especialidad,turno,curp_alumno,apellido_paterno,apellido_materno,nombre,fecha_nacimiento,telefono_celular,telefono_casa,correo_electronico,entidad,municipio,localidad,tipo_asentamiento,nombre_asentamiento,codigo_postal,tipo_vialidad,nombre_vialidad,numero_exterior,numero_interior,descripcion_ubicacion) VALUES ('$num_control','$semestre','$grupo','$especialidad','$turno','$curp','$ap_pat','$ap_mat','$nombre','$fecnac','$celular','$tel_casa','$correo','$entidad','$municipio','$localidad','$asentamiento','$nom_asentamiento','$codigo_postal','$vialidad','$nom_vialidad','$num_exterior','$num_interior','$descripcion')";
    
        // ABRIMOS CONEXIÓN E INSERTAMOS DATOS

   $resultado=mysqli_query ($conex,$insertar);


    if ($resultado) {

        correcto();


         mysqli_close($conex);


    }else{

      incorrecto();


          mysqli_close($conex);
    }  
      

  }



    
    ?>
    