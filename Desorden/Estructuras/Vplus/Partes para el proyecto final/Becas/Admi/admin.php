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

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
    </head>
    <body id="page-top" class="alert-info">

            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar -->
                <ul class="navbar-nav sidebar sidebar-dark accordion " id="accordionSidebar" style="background-color: #FC6128">

                    <!-- Sidebar - Brand -->
                    <a class="sidebar-brand d-flex align-items-center justify-content-center my-3" href="admin.php">
                        <div class="sidebar-brand-icon text-light font-italic">
                            <img src="../Image/logo.png" class="d-inline-block align-middle mr-2" alt="Logo-Cetis44" height="50" width="60">  BecaSist44
                        </div>
                      
                    </a>

                    <!-- Divider -->
                    <hr class="sidebar-divider my-0 bg-ligth">

                    <!-- Nav Item - Dashboard -->
                   <!--  <li class="nav-item text-left">
                        <a class="nav-link text-ligth " href="salir.php">
                            <i class="bi bi-person-lines-fill text-ligth ml-3 mr-lg-2" style="font-size:1.34rem"></i>
                            <span class="ml-2"><b>Cerrar sesión</b></span></a>
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
                        <div id="collapsePages" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="search.php">Buscar</a>
                                <a class="collapse-item" href="registrar/insert.php">Insertar</a>
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
                        <nav class="navbar navbar-expand topbar mb-4 static-top shadow-lg p-3 border-bottom-info " style="background-color: #fffc" >

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
                             <div class="align-items-center mb-4">
                                <h1 class="h3 mb-0 text-gray-800">Opciones que puedes realizar:</h1>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">

                                    <!-- Collapsable Card Example -->
                                    <div class="card shadow mb-4">
                                        <!-- Card Header - Accordion -->
                                        <a href="#collapseCardExample" class="card-header py-3 d-flex" data-toggle="collapse"
                                            role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                            <h6 class="m-0 font-weight-bold d-inline-block flex-grow-1 mr-5" style="color: #FA8128">Buscar
                                            </h6><i class="bi bi-caret-down-fill d-inline-block ml-5 pl-5 text-dark" style="font-size: 1.2rem"></i>


                                        </a>
                                        <!-- Card Content - Collapse -->
                                        <div class="collapse show" id="collapseCardExample">
                                            <div class="card-body">
                                                Tu puedes buscar cualquier estudiante mediante su <b>Numero de control o Curp</b> simplemente  da click en administrador de la barra de la izquierda y selecciona <i class="font-italic"> Buscar</i>. 
                                            </div>
                                        </div>
                                    </div>

                                     <!-- Collapsable Card Example -->
                                    <div class="card shadow mb-4">
                                        <!-- Card Header - Accordion -->
                                        <a href="#collapseCardExample1" class="card-header py-3 d-flex" data-toggle="collapse"
                                            role="button" aria-expanded="true" aria-controls="collapseCardExample1">
                                            <h6 class="m-0 font-weight-bold d-inline-block flex-grow-1 mr-5" style="color: #FA8128">Insertar
                                            </h6><i class="bi bi-caret-down-fill d-inline-block ml-5 pl-5 text-dark" style="font-size: 1.2rem"></i>


                                        </a>
                                        <!-- Card Content - Collapse -->
                                        <div class="collapse " id="collapseCardExample1">
                                            <div class="card-body">
                                                Tu puedes buscar a cualquier estudiante mediante su <b>Numero de control o Curp</b> simplemente  da click en adminisrador de la barra de la izquierda y selecciona <i class="font-italic"> Buscar</i>. 
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Collapsable Card Example -->
                                    <div class="card shadow mb-4">
                                        <!-- Card Header - Accordion -->
                                        <a href="#collapseCardExample5" class="card-header py-3 d-flex" data-toggle="collapse"
                                            role="button" aria-expanded="true" aria-controls="collapseCardExample5">
                                            <h6 class="m-0 font-weight-bold d-inline-block flex-grow-1 mr-5" style="color: #FA8128">Carga Masiva
                                            </h6><i class="bi bi-caret-down-fill d-inline-block ml-5 pl-5 text-dark" style="font-size: 1.2rem"></i>


                                        </a>
                                        <!-- Card Content - Collapse -->
                                        <div class="collapse " id="collapseCardExample5">
                                            <div class="card-body">
                                                Tu puedes buscar a cualquier estudiante mediante su <b>Numero de control o Curp</b> simplemente  da click en adminisrador de la barra de la izquierda y selecciona <i class="font-italic"> Buscar</i>. 
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-lg-6">
                                    
                                     <!-- Collapsable Card Example -->
                                    <div class="card shadow mb-4">
                                        <!-- Card Header - Accordion -->
                                        <a href="#collapseCardExample2" class="card-header py-3 d-flex" data-toggle="collapse"
                                            role="button" aria-expanded="true" aria-controls="collapseCardExample2">
                                            <h6 class="m-0 font-weight-bold d-inline-block flex-grow-1 mr-5" style="color: #FA8128">Actualizar
                                            </h6><i class="bi bi-caret-down-fill d-inline-block ml-5 pl-5 text-dark" style="font-size: 1.2rem"></i>


                                        </a>
                                        <!-- Card Content - Collapse -->
                                        <div class="collapse" id="collapseCardExample2">
                                            <div class="card-body">
                                                Tu puedes editar la informacion de un especifico  estudiante, antes de editar primero necesita<b> Buscar</b> para revisar si ese estudiante es el indicado posteriromente simplemente  da click en adminisrador de la barra de la izquierda y selecciona <i class="font-italic"> Actualizar</i>. 
                                            </div>
                                        </div>
                                    </div>

                                     <!-- Collapsable Card Example -->
                                    <div class="card shadow mb-4">
                                        <!-- Card Header - Accordion -->
                                        <a href="#collapseCardExample3" class="card-header py-3 d-flex" data-toggle="collapse"
                                            role="button" aria-expanded="true" aria-controls="collapseCardExample3">
                                            <h6 class="m-0 font-weight-bold d-inline-block flex-grow-1 mr-5" style="color: #FA8128">Eliminar
                                            </h6><i class="bi bi-caret-down-fill d-inline-block ml-5 pl-5 text-dark" style="font-size: 1.2rem"></i>


                                        </a>
                                        <!-- Card Content - Collapse -->
                                        <div class="collapse " id="collapseCardExample3">
                                            <div class="card-body">
                                                Tu puedes buscar a cualquier estudiante mediante su <b>Numero de control o Curp</b> simplemente  da click en adminisrador de la barra de la izquierda y selecciona <i class="font-italic"> Buscar</i>. 
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Collapsable Card Example -->
                                    <div class="card shadow mb-4">
                                        <!-- Card Header - Accordion -->
                                        <a href="#collapseCardExample7" class="card-header py-3 d-flex" data-toggle="collapse"
                                            role="button" aria-expanded="true" aria-controls="collapseCardExample7">
                                            <h6 class="m-0 font-weight-bold d-inline-block flex-grow-1 mr-5" style="color: #FA8128"> Reportes
                                            </h6><i class="bi bi-caret-down-fill d-inline-block ml-5 pl-5 text-dark" style="font-size: 1.2rem"></i>


                                        </a>
                                        <!-- Card Content - Collapse -->
                                        <div class="collapse " id="collapseCardExample7">
                                            <div class="card-body">
                                                Tu puedes buscar a cualquier estudiante mediante su <b>Numero de control o Curp</b> simplemente  da click en adminisrador de la barra de la izquierda y selecciona <i class="font-italic"> Buscar</i>. 
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <!-- /.container-fluid -->

                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer ">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; CETis 44</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->


        <!-- Optional JavaScript -->

        <script src="js/sb-admin-2.js"></script>

        <!-- Popper.js, then Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>