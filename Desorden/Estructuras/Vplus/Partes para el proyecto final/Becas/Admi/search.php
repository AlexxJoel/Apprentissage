<?php        
  require '../conexion.php';
  session_start();
  $usuario =$_SESSION['username'];

  if (!isset($usuario)) {
    
    header("Location:login.php");

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
                <ul class="navbar-nav sidebar sidebar-dark accordion toggled" id="accordionSidebar" style="background-color: #FC6128">

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
                        <div id="collapsePages" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
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
                        <div class="container-fluid text-dark  ">

                            <div class="col-12 d-flex justify-content-between">

                                <div>
                                    <h2>Haz la busqueda</h2>
                                </div>
                                <form class="form-inline mb-3 ">
                                    <div>
                                        <div class="mr-auto form-group pt-1">
                                            <label class="px-4 "><b>Numero de control</b></label>
                                            <input type="serch" placeholder="Buscar..." class="form-control border-info" id="search">
                                            
                                        </div>
                                    </div>
                                </form> 
                            </div> 
                            <div class="col-12">   

                                <div class="bg-light card">
                                    <table class="table table-bordered table-sm text-dark "  style=" color: #fff">
                                        <thead class="bg-dark text-light">
                                            <tr>
                                                <td>Numero de Control</td>
                                                <td>Curp</td>
                                                <td>Apellido Paterno</td>                                                
                                                <td>Apellido Materno</td>
                                                <td>Nombre</td>

                                                <td>Accion</td>
                                            </tr>
                                        </thead>
                                        <tbody id="container"></tbody>
                                    </table>
                                </div>
                                
                            </div>

                        </div>
                        <!-- /.container-fluid -->

                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer ">
                        <div class="container my-auto" >
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
        <script type="text/javascript"  src="js/Funciones.js"></script>

        <!-- Popper.js, then Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>