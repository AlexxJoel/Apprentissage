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
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>BECASIST44</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <link href="css/sb-admin-2.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script> 

        
    </head>
    <body id="page-top" >

            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar -->
                <ul class="navbar-nav sidebar sidebar-dark accordion toggled" id="accordionSidebar" style="background-color: #FC6128">

                    <!-- Sidebar - Brand -->
                    <a class="sidebar-brand d-flex align-items-center justify-content-center my-2" href="admin.php">
                        <div class="sidebar-brand-icon text-light font-italic">
                            <img src="../Image/logo.png" class="d-inline-block align-middle mr-2" alt="Logo-Cetis44" height="50" width="60">  BecaSist44
                        </div>
                      
                    </a>

                    <!-- Divider -->
                    <hr class="sidebar-divider my-0 bg-ligth">

                    <!-- Nav Item - Dashboard -->
                  <!--   <li class="nav-item text-left">
                        <a class="nav-link text-ligth " href="·">
                            <i class="bi bi-person-lines-fill text-ligth ml-3 mr-lg-2" style="font-size:1.34rem"></i>
                            <span class="ml-2"><b>Alumno</b></span></a>
                    </li> -->

                    <!-- Divider -->
                    <hr class="sidebar-divider bg-ligth">

                    <!-- Heading -->
                    <div class="sidebar-heading  text-ligth">
                        Acciones
                    </div>

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item  text-left active">
                        <a class="nav-link  text-ligth " href="#"  data-toggle="collapse"  data-target="#collapsePages"
                            aria-expanded="true" aria-controls="collapsePages">
                            <i class="bi bi-pencil-square text-ligth ml-3 mr-lg-2" style="font-size:1.34rem"></i>
                            <span class="mr-lg-3 text-ligth ml-2">Administrador</span >
                            <i class="bi bi-arrow-down-circle-fill text-gray-ligth"></i>
                        </a>
                        <div id="collapsePages" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="search.php">Buscar</a>
                                <a class="collapse-item" href="#">Insertar</a>
                                <a class="collapse-item" href="front/actu.php">Actualizar</a>
                                <hr class="sidebar-diviser">
                                <a class="collapse-item" href="front/elimi.php">Eliminar</a>
                            </div>
                        </div>
                    </li>
                    

                    <!-- Divider -->
                    <hr class="sidebar-divider bg-ligth">

                    <!-- Heading -->
                    <div class="sidebar-heading  text-ligth ">
                        Extras
                    </div>

                    
                    <!-- Nav Item - Charts -->
                    <li class="nav-item">
                        <a class="nav-link text-ligth" href="carga_masiva/carga.php">
                            <i class="bi bi-table text-ligth ml-3 mr-lg-2"style="font-size:1.34rem"></i>
                            <span><b>Carga Masiva</b></span></a>
                    </li>

                    <!-- Nav Item - Tables -->
                    <li class="nav-item">
                        <a class="nav-link text-ligth" href="correo/correo.php">
                            <i class="bi bi-envelope-open text-ligth ml-3 mr-lg-2" style="font-size:1.34rem"></i>
                            <span><b>Reportes</b></span></a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider d-none d-md-block">

                    <!-- Sidebar Toggler (Sidebar) -->
                    <div class="text-center d-none d-md-inline">
                        <button class="rounded-circle border-0" id="sidebarToggle">
                            <i class="bi bi-arrow-left-right" style="color: #fff"></i>
                        </button>
                    </div>

                </ul>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->
                        <nav class="navbar navbar-expand topbar mb-4 static-top shadow-lg p-3 border-bottom-info " style="background-color: #fffc"  >

                            <!-- Sidebar Toggle (Topbar) -->
                            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle m-lg-2 mr-sm-auto text-center" >
                               <i class="bi bi-list"></i>
                            </button>            
                      
                             <form  action="http://www.google.com/search" method="get" class="d-none d-sm-inline-block form-inline ml-auto">
                                    <div class="input-group">
                                      <input class="form-control me-2" type="search" placeholder="Google.." aria-label="Search">
                                      <div class="input-group-append">
                                        <button class="btn text-light"  type="submit" style="background-color: #FA8128">Buscar<i class="bi bi-search ml-2 text-light"></i></button>
                                      </div>
                                    </div>
                             </form>          

                            <!-- Topbar Navbar -->
                            <ul class="navbar-nav ml-auto">
                                <!-- Topbar Search -->
                                                                                       

                                <div class="topbar-divider d-none d-sm-block"></div>

                               <!-- Nav Item - User Information -->
                                <li class="nav-item  no-arrow">

                                    <a class="nav-link " href="salir.php" >
                                        <span class="mr-2 d-none d-lg-inline small" style="color:  #000">Cerrar Sesión</span>
                                        <p class="bi bi-person-lines-fill pt-2 " style="font-size:2.4rem;color: #000" ></p>                                
                                    </a>
                                   
                                </li>

                            </ul>

                        </nav>
                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->
                        <div class="container-fluid text-dark">

                            <!-- Page Heading -->
                             <div class="align-items-center  mb-2">
                                <h1 class="h3 mb-0 text-gray-800  font-italic">Revision de datos:</h1>
                            </div>

                            <div class="">
                                <div class="progress ">
                                <div class="progress-bar progress-bar-animated bg-danger active " role="progressbar" aria-valuemin="0" aria-valuemax="100"></div></div>
                            </div>


                            <?php 
                            $control1 = $_GET['codigo'];  

                           

                            // $control1 = '51767528782567';                          

                            $CsltaEdit= "SELECT * FROM alumnos WHERE no_control= '$control1'";

                            $JtarEdit = mysqli_query($conex,$CsltaEdit) or die(mysqli_error($conex));

                            foreach ($JtarEdit as $control) :       ?>

                            <form  id="regiration_form" >
                                <fieldset   class="parte">
                                    <div class=" card text-gray border-dark alert-info"> <!-- Primera seccion -->
                                        <h3 class="text-center mt-1">DATOS ESCOLARES DEL ALUMNO(A)</h3>
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label" for="id"><b class="text-danger">*</b>Numero de control:</label> 
                                                    <input  type="text" class="form-control text-center text-danger font-weight-bold disabled" id="id"   maxlength="14" value="<?php echo $control['no_control']; ?>" >
                                                 </div>
                                                <div class="col-lg-6">
                                                  <label class="text-left text-lg-right  col-form-label"><b class="text-danger">*</b>Semestre:</label>   
                                                    <input type="text" class="form-control  text-center text-danger font-weight-bold disabled " id="semestre" value="<?php echo $control['semestre']; ?>" >
                                                </div>
                                         </div>

                                          <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Grupo:</label>                               
                                                    <input  type="text" class="form-control text-center font-weight-bold text-danger disabled" id="grupo" required  value="<?php echo $control['grupo']; ?>">
                                                 </div>
                                                <div class="col-lg-6">
                                                 <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Especialidad:</label>    
                                                    <input type="text" class="form-control  text-center font-weight-bold text-danger disabled" id="especialidad" value="<?php echo $control['especialidad']; ?>" >
                                                </div>
                                        </div>

                                          <div class="row ">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Turno:</label>    
                                                    <input  type="text" class="form-control text-center font-weight-bold text-danger disabled" id="turno" required value="<?php echo $control['turno']; ?>">
                                                 </div>  
                                                 <div class="col-lg-6">
                                                     <label for="curp" class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Curp del estudiante:</label> 
                                                     <input  type="text" class="form-control  text-center font-weight-bold text-danger disabled" id="curp" value="<?php echo $control['curp_alumno']; ?>">
                                                 </div>
                                        </div>  

                                        <div class="row mb-3">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Correo:</label>    
                                                    <input  type="email" class="form-control text-center font-weight-bold text-danger disabled" id="correo" required value="<?php echo $control['correo_electronico']; ?>">
                                                 </div>  
                                                 
                                        </div>     
                                        </div>
                                    </div><!-- Fin de Primera secciòn -->

                                    <div  class="container ">  <!-- Botones -->
                                        <div class="row  ">
                                          <div class="col-lg-12">
                                            <div class="form-group row d-flex justify-content-around mt-3">

                                                

                                                <a type="button"  class=" btn btn-default col-5 col-md-4 btn-outline-success" href="search.php">Regresar a buscar</a>
                                                <input type="button" id="data[password]" class="next btn btn-info col-5 col-md-4" value="Siguiente">     

                                            </div>           
                                          </div>
                                        </div>
                                    </div><!--Fin Botones -->               
                                </fieldset>

                                <fieldset   class="parte">
                                    <div class=" card text-gray border-info alert-info"> <!-- Primera seccion -->
                                        <h3 class="text-center mt-1">DATOS ESCOLARES DEL ALUMNO(A)</h3>
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Apellido Paterno:</label>  
                                                    <input  type="text" class="form-control text-center text-danger font-weight-bold disabled" id="apellido_paterno" required  value="<?php echo $control['apellido_paterno']; ?>">
                                                 </div>  
                                                 <div class="col-lg-6">
                                                       <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Apellido Materno:</label>  
                                                        <input  type="text" class="form-control text-center text-danger font-weight-bold disabled " id="apellido_materno" value="<?php echo $control['apellido_materno']; ?>" >
                                                 </div>
                                         </div>

                                          <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Nombre(s):</label>
                                                    <input  type="text" class="form-control text-danger text-center font-weight-bold disabled" id="nombre" value="<?php echo $control['nombre']; ?>">
                                                 </div>
                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Fecha de Nacimiento:</label>
                                                    <input  type="text" class="form-control text-danger text-center font-weight-bold disabled" id="fecha_nacimiento" value="<?php echo $control['fecha_nacimiento']; ?>">
                                                </div>
                                        </div>

                                          <div class="row ">
                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Número de Celular:</label>
                                                    <input  type="text" class="form-control text-danger text-center font-weight-bold disabled" id="celular" onkeypress="return solonumeros(event)" required placeholder="Ingresa numero" maxlength="10" value="<?php echo $control['telefono_celular']; ?>">
                                                 </div>  
                                                 <div class="col-lg-6">
                                                     <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Número de Casa:</label>
                                                    <input  type="text" class="form-control text-danger text-center font-weight-bold disabled" id="tel_casa" onkeypress="return solonumeros(event)" required placeholder="Ingresa numero"  maxlength="10" value="<?php echo $control['telefono_casa']; ?>">
                                                 </div>
                                        </div>   


                                        <div class="row mb-3">
                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Código Postal:</label>
                                                    <input  id="cp" type="text" class="form-control  text-center text-danger font-weight-bold disabled" id="cp" maxlength="5" value="<?php echo $control['codigo_postal']; ?>">
                                                 </div>  
                                                 
                                            </div>   
                                        </div>
                                    </div><!-- Fin de Primera secciòn -->

                                    <div  class="container ">  <!-- Botones -->
                                        <div class="row  ">
                                          <div class="col-lg-12">
                                            <div class="form-group row d-flex justify-content-around mt-3">

                                                

                                                <input type="button" id="previous" class="previous btn btn-default col-5 col-md-4 btn-outline-info" value="Previo">
                                                 <input type="button" id="next" class="next btn btn-info col-5 col-md-4" value="Siguiente">    

                                            </div>           
                                          </div>
                                        </div>
                                    </div><!--Fin Botones -->               
                                </fieldset>

                                <fieldset   class="parte">
                                    <div class=" card text-gray border-info alert-info"> <!-- Primera seccion -->
                                        <h3 class="text-center mt-1">DATOS ESCOLARES DEL ALUMNO(A)</h3>
                                        <div class="container">
                                            

                                            <div class="row">
                                                
                                                <div class="col-lg-6">
                                                     <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Tipo de asentamiento:</label>
                                                    <input  type="text" class="form-control text-center text-danger font-weight-bold disabled" id="tipo_asentamiento" value="<?php echo $control['tipo_asentamiento']; ?>">  
                                                </div>
                                                <div class="col-lg-6">
                                                   <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Nombre del Asentamiento:</label> 
                                                    <input  type="text" class="form-control text-danger text-center font-weight-bold disabled " id="nom_asentamiento" value="<?php echo $control['nombre_asentamiento']; ?>">
                                                 </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Municipio:</label>
                                                    <input  type="text" class="form-control text-danger text-center font-weight-bold disabled" id="municipio" value="<?php echo $control['municipio']; ?>">
                                                 </div>  
                                                 <div class="col-lg-6">
                                                     <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Localidad:</label>
                                                    <input  type="text" class="form-control  text-danger text-center font-weight-bold disabled" id="localidades" value="<?php echo $control['localidad']; ?>">
                                                 </div>
                                             </div>  

                                             <div class="row">
                                                <div class="col-lg-6">
                                                   <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Entidad:</label> 
                                                    <input  type="text" class="form-control text-danger text-center font-weight-bold disabled" id="entidad" value="<?php echo $control['entidad']; ?>">
                                                 </div>
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Tipo de Vialidad:</label>
                                                    <input type="text" class="form-control  text-danger text-center font-weight-bold disabled" id="tipo_vialidad" required  value="<?php echo $control['tipo_vialidad']; ?>">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-6">
                                                   <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Nombre de la Vialidad:</label>
                                                    <input type="text" class="form-control  text-danger text-center font-weight-bold disabled" id="nom_vialidad" required  value="<?php echo $control['nombre_vialidad']; ?>">
                                                 </div>
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label ">Número exterior:</label>  
                                                    <input type="text" class="numeteriro form-control  text-danger text-center font-weight-bold disabled" id="numero_exterior" value="<?php echo $control['numero_exterior']; ?>"  >
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-6">
                                                   <label class="text-left text-lg-center col-form-label ">Número Interior:</label>  
                                                    <input type="text" class="numeteriro form-control text-danger text-center font-weight-bold disabled " id="numero_interior" value="<?php echo $control['numero_interior']; ?>" >
                                                 </div>
                                                <div class="col-lg-6">
                                                     <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Descripción de la Ubicación:</label> 
                                                     <textarea class="form-control text-danger text-center font-weight-bold disabled" id="descripcion_ubicacion" style="resize: none;"><?php echo $control['descripcion_ubicacion']; ?></textarea>
                                                     
                                                </div>
                                            </div>

                                        </div>
                                    </div><!-- Fin de Primera secciòn -->

                                    <div  class="container ">  <!-- Botones -->
                                        <div class="row  ">
                                          <div class="col-lg-12">
                                            <div class="form-group row d-flex justify-content-between mt-3">

                                                    <input type="button" name="previous" class="previous btn-outline-info btn btn-default  col-2 " value="Previo" >
                                                    <button class="btn btn-outline-success  col-2"  id="edit">
                                                        Comenzar a editar
                                                    </button> 
                                                    <button class="btn btn-info  col-2"  id="actualizar">
                                                        Guardar cambios
                                                    </button>    
                                                    <button class=" btn btn-danger  col-2"  type="submit" id="eliminar">
                                                        Eliminar
                                                    </button>                                               
                                                                       

                                            </div>           
                                          </div>
                                        </div>
                                    </div><!--Fin Botones -->               
                                </fieldset>
                            <?php endforeach ?>  
                            </form>
                        </div>
                    </div>

                     <footer class="footer mb-3">
                        <div class="container my-auto" >
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; CETis 44</span>
                            </div>
                        </div>
                    </footer>


        <!-- Optional JavaScript -->

        <script src="js/sb-admin-2.js"></script>
        <script type="text/javascript" src="js/step-step.js"></script>

        <!-- Popper.js, then Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>