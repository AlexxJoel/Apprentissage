
<?php        
  require '../../conexion.php';
  session_start();
  $usuario =$_SESSION['username'];

  if (!isset($usuario)) {
    
    header("location:../login.php");

    exit();
  }

 // carga de municipios
    $CsltMuni= "SELECT Cve_Mun,Nom_Mun FROM localidades GROUP BY Nom_Mun ORDER BY Cve_Mun";

     $JtarMuni = mysqli_query($conex,$CsltMuni) or die(mysqli_error($conex));
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

        <link href="../css/sb-admin-2.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../css/style.css">

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
                    <a class="sidebar-brand d-flex align-items-center justify-content-center my-2" href="../admin.php">
                        <div class="sidebar-brand-icon text-light font-italic">
                            <img src="../../Image/logo.png" class="d-inline-block align-middle mr-2" alt="Logo-Cetis44" height="50" width="60">  BecaSist44
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
                                <a class="collapse-item" href="../search.php">Buscar</a>
                                <a class="collapse-item" href="insert.php">Insertar</a>
                                <a class="collapse-item" href="../front/actu.php">Actualizar</a>
                                <hr class="sidebar-diviser">
                                <a class="collapse-item" href="../front/elimi.php">Eliminar</a>
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
                        <a class="nav-link text-ligth" href="../carga_masiva/carga.php">
                            <i class="bi bi-table text-ligth ml-3 mr-lg-2"style="font-size:1.34rem"></i>
                            <span><b>Carga Masiva</b></span></a>
                    </li>

                    <!-- Nav Item - Tables -->
                    <li class="nav-item">
                        <a class="nav-link text-ligth" href="../correo/correo.php">
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

                                    <a class="nav-link " href="../salir.php" >
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
                                <h1 class="h3 mb-0 text-gray-800  font-italic">Registro de alumno:</h1>
                            </div>

                            <div class="">
                                <div class="progress ">
                                <div class="progress-bar progress-bar-animated bg-danger active " role="progressbar" aria-valuemin="0" aria-valuemax="100"></div></div>
                            </div>

                            <form  id="regiration_form" method="POST" action="registro_alumno.php">
                                <fieldset   class="parte">
                                    <div class=" card text-gray border-primary alert-info"> <!-- Primera seccion -->
                                    <h3 class="text-center mt-1">DATOS ESCOLARES DEL ALUMNO(A)</h3>
                                        <div class="container ">

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Numero de control:</label> 
                                                    <input  type="text" class=" form-control " name="id" id="id" required  maxlength="14" minlength="14" onkeypress="return solonumeros(event)" placeholder="Ingresa 14 Numeros">
                                                 </div>

                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Semestre:</label> 
                                                    <select  class="form-control  custom-select" name="semestre" required>
                                                        <option value="1">1</option>
                                                        <option value="3">3</option>
                                                        <option value="5">5</option>                
                                                    </select>

                                                </div>
                                             </div>

                                            <div class="row">

                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Grupo:</label> 
                                                    <select  class="form-control  custom-select" name="grupo" required>
                                                        <option value="A">A</option>
                                                        <option value="B">B</option>
                                                        <option value="C">C</option>                
                                                    </select>
                                                 </div>

                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Especialidad:</label> 
                                                    <select  class="form-control  custom-select" name="especialidad" required>       
                                                        <option value="Preparación de Alimentos y Bebidas">Preparación de Alimentos y Bebidas</option>
                                                        <option value="Contabilidad">Contabilidad</option>
                                                        <option value="Programación">Programación</option>
                                                        <option value="Soporte y Mantenimiento de Equipo de Computo">Soporte y Mantenimiento de Equipo de Computo</option>
                                                        <option value="Electronica">Electronica</option>
                                                        <option value="Ofimatica">Ofimatica</option>              
                                                    </select>
                                                </div>

                                             </div>

                                            <div class="row">

                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label "><b class="text-danger">*</b>Turno:</label>  
                                                    <select  class="form-control  custom-select" name="turno" required>
                                                        <option value="Matutino">Matutino</option>
                                                        <option value="Vespertino">Vespertino</option>              
                                                     </select>
                                                 </div>

                                                <div class="col-lg-6">
                                                    <label for="curp" class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Curp del  alumno:</label> 
                                                    <input  type="text" class="form-control " name="curp" id="curp" required maxlength="18" placeholder="Ingrese su curp">
                                                    
                                                </div>

                                             </div>

                                             <div class="row mb-3">

                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label  correo"><b class="text-danger">*</b>Correo:</label>
                                                    <input  type="email" class="form-control  " name="correo" required placeholder="Ingresa correo" id="correo">
                                                </div>


                                                <div class="col-lg-6">                                                
                                                 <a href="https://www.gob.mx/curp/" class="nav-item btn-link text-danger d-flex ml-auto p-0 my-0">¿No conoces tu CURP?</a>
                                                </div>

                                            </div>

                                        </div>
                                    </div>                                            

                                    <div  class="container ">  <!-- Botones -->
                                        <div class="row  ">
                                          <div class="col-lg-12">
                                            <div class="form-group row d-flex justify-content-between mt-3">

                                                <input type="button"  class="next btn btn-info btn-block" value="Siguiente" >      

                                            </div>           
                                          </div>
                                        </div>
                                    </div><!--Fin Botones -->               
                                </fieldset>

                                <fieldset  class="parte">
                                    <div class=" card text-gray border-primary alert-info"> <!-- Segunda seccion -->

                                        <h3 class="text-center mt-1">DATOS ESCOLARES  DEL ALUMNO(A)</h3>

                                        <div class="container ">

                                            <div class="row">                                                

                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Apellido Paterno:</label>  
                                                    <input  type="text" class="form-control  nombre_pa" name="apellido_paterno" onkeypress="return letras(event)" required placeholder="Evita usar acentos" >
                                                </div>

                                               <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Apellido Materno:</label>  
                                                    <input  type="text" class="form-control  nombre_ma" name="apellido_materno" onkeypress="return letras(event)" required placeholder="Evita usar acentos">
                                                </div>

                                             </div>


                                            <div class="row">                                                

                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Nombre(s):</label>
                                                    <input  type="text" class="form-control  nombre" name="nombre" onkeypress="return letras(event)" required placeholder="Evita usar acentos">
                                                </div>

                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Fecha de Nacimiento:</label>
                                                    <input  type="date" class="form-control " name="fecha_nacimiento" required id="date">
                                                </div>

                                            </div>



                                            <div class="row mb-3">
                                                

                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Número de Celular:</label>
                                                    <input  type="text" class="form-control " name="celular" onkeypress="return solonumeros(event)" required placeholder="Ingresa numero" maxlength="10" id="celular">
                                                </div>


                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Número de Casa:</label>
                                                    <input  type="text" class="form-control " name="tel_casa" onkeypress="return solonumeros(event)" required placeholder="Ingresa numero"  maxlength="10" id="tel_casa">
                                                </div>

                                            </div>
                                        </div>
                                    </div><!-- Fin de Segunda secciòn -->

                                    <div  class="container "><!-- Botones --> 
                                        <div class="row  ">
                                          <div class="ml-lg-0 col-lg-12">
                                            <div class="form-group row d-flex justify-content-around mt-3">

                                                <input type="button" name="previous" class="previous btn btn-default col-5 col-md-4 btn-outline-info" value="Previo">
                                                <input type="button" name="next" class="next2 btn btn-info col-5 col-md-4" value="Siguiente">      

                                            </div>           
                                          </div>
                                        </div>
                                    </div><!--Fin Botones -->               
                                </fieldset>

                                <fieldset  class="parte" >
                                    <div class=" card text-gray border-primary alert-info"><!-- tercer seccion -->
                                        <h3 class="text-center mt-1">DIRECCIÓN DEL ALUMNO(A)</h3>

                                        <div class="container">

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-lg-right text-left col-form-label "><b class="text-danger">*</b>Código Postal:</label>
                                                    <input  id="cp" type="text" class="form-control " name="cp" required placeholder="Ingresa 5 numeros" onkeypress="return solonumeros(event)" maxlength="5">

                                                <!-- <a href="https://www.correosdemexico.gob.mx/SSLServicios/ConsultaCP/Descarga.aspx" class="nav-item btn-link text-danger d-flex ml-auto p-0 my-0">¿No conoces tu Codigo Postal?</a> -->
                                                </div>
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Tipo de asentamiento:</label>
                                                    <select class="form-control  custom-select" name="tipo_asentamiento"  id="tpoasent">
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Nombre del Asentamiento:</label> 
                                                  <select class="form-control  custom-select" name="nom_asentamiento"  id="nombreasent">
                                                  </select>
                                                </div>
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Tipo de Vialidad:</label>
                                                    <select class="form-control custom-select " name="tipo_vialidad" required>
                                                  <option value="Ampliacion">Ampliacion</option>
                                                    <option value="Andador">Andador</option>
                                                    <option value="Avenida">Avenida</option>
                                                    <option value="Boulvevard">Boulvevard</option> <!--Of broken dreams? xD ajaja-->
                                                    <option value="Callejón">Callejón</option>
                                                    <option value="Calle">Calle</option>                        
                                                    <option value="Calazada">Calazada</option>
                                                    <option value="Cerrada">Cerrada</option>
                                                    <option value="Circuito">Circuito</option>
                                                    <option value="Circunvalación">Circunvalación</option>
                                                    <option value="Continuación">Continuación</option>
                                                    <option value="Corredor">Corredor</option>
                                                    <option value="Diagonal">Diagonal</option>
                                                    <option value="Eje Vial">Eje Vial</option>
                                                    <option value="Pasaje">Pasaje</option>
                                                    <option value="Peatonal">Peatonal</option>
                                                    <option value="Periférico">Periférico</option>
                                                    <option value="Privada">Privada</option>
                                                    <option value="Prolongación">Prolongación</option>
                                                    <option value="Retorno">Retorno</option>
                                                    <option value="Viaducto">Viaducto</option>
                                                    <option value="Carretera">Carretera</option>
                                                    <option value="Brecha">Brecha</option>
                                                    <option value="Camino">Camino</option>
                                                    <option value="Terracería">Terracería</option>
                                                    <option value="Vereda">Vereda</option>
                                                    </select>
                                                </div>
                                            </div> 

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Nombre de la Vialidad:</label> 
                                                    <input type="text" class="form-control " name="nom_vialidad" required  >
                                                </div>
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Municipio:</label>
                                                    <select id="semuni"  class="  custom-select" name="municipio" required>

                                                    <?php foreach ($JtarMuni as $mun) :   ?>  

                                                      <option value="<?php echo $mun['Cve_Mun']; ?>">
                                                      <?php echo $mun['Nom_Mun']; ?>
                                                      </option>

                                                    <?php endforeach ?> 

                                                    </select>
                                                </div>
                                            </div> 

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Localidad:</label>
                                                    <select  id="localidades"  class="form-control  custom-select" name="localidades" required>   
                                                    </select>
                                                    
                                                </div>
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Entidad:</label> 
                                                    <select name="entidad"  class="form-control  custom-select" name="entidad" required>
                                                      <option id="entidad"></option>   
                                                    </select>
                                                </div>
                                            </div> 

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right  col-form-label ">Número exterior:</label>  
                                                    <input type="text" class="numeteriro form-control " name="numero_exterior"  onkeypress="return solonumeros(event)" placeholder="S/N=Dejalo en blanco" maxlength="6" >
                                                </div>
                                                <div class="col-lg-6">
                                                   <label class="text-left text-lg-center col-form-label ">Número Interior:</label>  
                                                  <input type="text" class="numeteriro form-control " name="numero_interior" onkeypress="return solonumeros(event)"placeholder="S/N=Dejalo en blanco" maxlength="6" > 
                                                </div>
                                            </div> 

                                            <div class="row mb-3">
                                                <div class="col-lg-6">
                                                    <label class="text-left text-lg-right col-form-label "><b class="text-danger">*</b>Descripción de la Ubicación:</label> 
                                                    <input type="text" class="form-control " name="descripcion_ubicacion" placeholder="Tiendas/Areas verdes/Iglesias" required>
                                                </div>
                                                <div class="col-lg-6">
                                                    
                                                </div>
                                            </div> 
                                        </div>                                            
                                    </div>  

                                    <div  class="container  bg-transparent">  <!-- Botones -->
                                        <div class="row  ">
                                          <div class="col-lg-12">
                                            <div class="form-group row d-flex justify-content-around mt-3">
                                                
                                                <input type="button" name="previous" class="previous btn-outline-info btn btn-default col-5 col-md-4 " value="Previo" >
                                                <button class=" btn btn-danger col-5 col-md-4"  type="submit" name="enviar">
                                                    Registrarse
                                                </button>
                                                

                                            </div>           
                                          </div>
                                        </div>
                                    </div><!--Fin Botones --> 

                                </fieldset>         
                            </form>
                        </div>
                    </div>

                           
                     <footer class="footer mb-4">
                        <div class="container my-auto" >
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; CETis 44</span>
                            </div>
                        </div>
                    </footer>


        <!-- Mine -->

        <script type="text/javascript" src="js/Funciones.js"></script>
        <script type="text/javascript" src="js/step-step.js"></script>
        <script type="text/javascript" src="js/condiciones.js"></script>

        <script src="../js/sb-admin-2.js"></script>

        <!-- Popper.js, then Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>