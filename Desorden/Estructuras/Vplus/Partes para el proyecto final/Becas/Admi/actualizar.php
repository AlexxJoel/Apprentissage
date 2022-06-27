 <?php    
  include('../conexion.php');
if(isset($_POST['datos'])) {

    // $datos= json_encode($_POST['datos']);
    $datos= $_POST['datos'];
 

     //Recibimos los datos del formulario y los metemos en variables//
    
       //DATOS ALUMNO (ESCUELA)//
    $num_control=$datos['id'];
    $semestre=$datos['semestre']; //Semestre del alumno
    $grupo=$datos['grupo'];
    $especialidad=$datos['especialidad'];
    $turno=$datos['turno'];
       //DATOS ALUMNO//
    $curp=$datos['curp'];

    $ap_p=$datos['apellido_paterno'];
    $ap_m=$datos['apellido_materno'];
    $nomb=$datos['nombre'];
    // mayusculas
    $ap_pat= strtoupper($ap_p);
    $ap_mat= strtoupper($ap_m);
    $nombre= strtoupper( $nomb);


    $fecnac=$datos['fecha_nacimiento']; //Fecha de nacimiento
    $celular=$datos['celular'];
    $tel_casa=$datos['tel_casa'];
    $correo=$datos['correo'];
        //DIRECCION ALUMNO//
    $entidad=$datos['entidad'];
    $municipio=$datos['municipio'];
    $localidad=$datos['localidades']; //Se encuentra el select en el archivo consultas.php (15)
    $asentamiento=$datos['tipo_asentamiento'];
    $nom_asentamiento=$datos['nom_asentamiento'];
    $codigodatosal=$datos['cp'];
    $vialidad=$datos['tipo_vialidad'];
    $nom_vialidad=$datos['nom_vialidad'];
    $num_exterior=$datos['numero_exterior'];
    $num_interior=$datos['numero_interior'];
    $descripcion=$datos['descripcion_ubicacion'];

    //CREAMOS LA INSTRUCCIOÓN QUE Actualiza LOS DATOS EN LA TABLA "ALUMNOS"//
    
$Actualizar="UPDATE alumnos set  semestre='$semestre' , grupo='$grupo' , especialidad='$especialidad' , turno='$turno' , curp_alumno='$curp' , apellido_paterno='$ap_pat' , apellido_materno='$ap_mat' , nombre='$nombre' , fecha_nacimiento='$fecnac' , telefono_celular='$celular' , telefono_casa='$tel_casa' , correo_electronico='$correo' , entidad='$entidad' , municipio='$municipio' , localidad='$localidad' , tipo_asentamiento='$asentamiento' , nombre_asentamiento='$nom_asentamiento' , codigo_postal='$codigo_postal' , tipo_vialidad='$vialidad' , nombre_vialidad='$nom_vialidad' , numero_exterior='$num_exterior' , numero_interior='$num_interior' , descripcion_ubicacion='$descripcion' WHERE  no_control='$num_control'" ;

    
        //ABRIMOS CONEXIÓN E INSERTAMOS DATOS

   $ressultado=mysqli_query ($conex,$Actualizar);

    if ($ressultado) {

     $data = "exito";

    }else{
        $data ="no";
    }

  echo $data;  
 // mysqli_close($conex);

    
}


?>