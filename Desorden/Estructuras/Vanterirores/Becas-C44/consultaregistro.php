<?php

include('conexion.php'); //Incluimos la conexión a la BD

$select="SELECT * FROM alumnos"; //Consulta Select
$resAlumno=mysqli_query ($conex,$select);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registros</title>
    <link rel="stylesheet" href="css/registros.css">
    <style>
        table,tr,th,td {}
    </style>
</head>
<body>
   
   <main>
       <font face="BEBAS"><h1>Alumnos Registrados</h1></font>
   </main>
    
    <section>
        <center>
            <table width=90% border="1px">
                <tr>
                    <th width="15%">Np. Control</th>
                    <th width="15%">Semestre</th>
                    <th width="15%">Grupo</th>
                    <th width="15%">Especialidad</th>
                    <th width="15%">Turno</th>
                    <th width="15%">CURP</th>
                    <th width="15%">Apellido Paterno</th>
                    <th width="15%">Apellido Materno</th>
                    <th width="15%">Nombre</th>
                    <th width="15%">Fecha Nacimiento</th>
                    <th width="15%">Teléfono Celular</th>
                    <th width="15%">Teléfono Casa</th>
                    <th width="15%">E-Mail</th>
                    <th width="15%">Entidad</th>
                    <th width="15%">Municipio</th>
                    <th width="15%">Localidad</th>
                    <th width="15%">Tipo Asentamiento</th>
                    <th width="15%">Nombre Asentamiento</th>
                    <th width="15%">Código Postal</th>
                    <th width="15%">Tipo Vialidad</th>
                    <th width="15%">Nombre Vialidad</th>
                    <th width="15%">Número Exterior</th>
                    <th width="15%">Número Interior</th>
                    <th width="15%">Descripción Ubicación</th>
                    
                </tr>
                <?php 
                
                    while($regAlumno = $resAlumno ->fetch_array(MYSQL_BOTH))
                          {
                              echo '<tr>
                                        <td>'.$regAlumno['no_control'].'</td>
                                        <td>'.$regAlumno['semestre'].'</td>
                                        <td>'.$regAlumno['grupo'].'</td>
                                        <td>'.$regAlumno['especialidad'].'</td>
                                        <td>'.$regAlumno['turno'].'</td>
                                        <td>'.$regAlumno['curpo_alumno'].'</td>
                                        <td>'.$regAlumno['apellido_paterno'].'</td>
                                        <td>'.$regAlumno['apellido_materno'].'</td>
                                        <td>'.$regAlumno['nombre'].'</td>
                                        <td>'.$regAlumno['fecha_nacimiento'].'</td>
                                        <td>'.$regAlumno['telefono_celular'].'</td>
                                        <td>'.$regAlumno['telefono_casa'].'</td>
                                        <td>'.$regAlumno['correo_electronico'].'</td>
                                        <td>'.$regAlumno['entidad'].'</td>
                                        <td>'.$regAlumno['municipio'].'</td>
                                        <td>'.$regAlumno['localidad'].'</td>
                                        <td>'.$regAlumno['tipo_asentamiento'].'</td>
                                        <td>'.$regAlumno['nombre_asentamiento'].'</td>
                                        <td>'.$regAlumno['codigo_postal'].'</td>
                                        <td>'.$regAlumno['tipo_vialidad'].'</td>
                                        <td>'.$regAlumno['nombre_vialidad'].'</td>
                                        <td>'.$regAlumno['numero_exterior'].'</td>
                                        <td>'.$regAlumno['numero_interior'].'</td>
                                        <td>'.$regAlumno['descripcion_ubicacion'].'</td>';
                          }
                ?>
            </table>
        </center>
    </section>
    <footer>
        &copy;Cetis 44
    </footer>
</body>
</html>
