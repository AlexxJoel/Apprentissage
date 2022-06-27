<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>BECASIST44</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
        <script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script> 

    </head>
    <body class="alert-info">

    <nav class="navbar navbar-expand-lg navbar-dark p-sm-3 p-lg-3 sticky-top border-light bg-dark">
        <!-- el expand es hasta que tamaño aparece toda la barra , el sticki es para que la barra acompañe la pagina         -->
        <a href="../index.html" class="navbar-brand">
            <img src="../Image/logo.png" class="d-inline-block align-middle mr-4" alt="Logo-Cetis44" height="60" width="60">CETis 44 
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" >
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Este boton aparece cuando es para moviles , necesita un id del div para el target -->
        
        <div class="collapse navbar-collapse" id="navbarColor01">
            <div class="container d-flex justify-content-center"  >
                <p class="h2 text-justify " style="color: #fffa"><b>BecaSist44</b></p>
            </div>          
       <!--      <div class="navbar-nav  ml-auto  text-center mr-2">
                <a  class="nav-item nav-link active" href="#holaaaaaa">Inicio</a>           
                <a  class="nav-item nav-link " href="#holaaaaaa">Sugerencias</a>           
                <a  class="nav-item nav-link " href="#holaaaaaa">Dudas</a>          
                <a  class="nav-item nav-link " href="#holaaaaaa">Contacto</a>           
            </div> -->
            <div class="d-flex justify-content-center pl-lg-5">
                <a  class="btn btn-info mr-3 ml-3" href="https://www.facebook.com/Cetis-44-168140859877363/">F</a>
                <!-- <a  class="btn btn-danger ml-3" href="#Youtube">Y</a> -->
            </div> 
        </div>
    </nav>
       
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-10 col-lg-12 col-md-9">
                    <div class="card  border-0 shadow-lg mt-4 bg-light">
                        <div class="card-body p-0">
                            <div class="p-5">
                                <div class="text-center my-3">
                                    <h1 class="h2 mb-4 text-uppercase"><b>Inicio de sesión</b></h1>
                                </div>
                                <form id="logeo_form">
                                    <div class="form-group">
                                        <label for="user"><b>Usuario:</b></label>
                                        <input type="text" class="form-control" id="user" placeholder="Introduzca Usuario..." required>
                                    </div>
                                    <div class="form-group my-4">
                                        <label><b>Contraseña:</b></label>
                                        <input type="password" class="form-control"
                                            id="password" placeholder="Introduzca Contraseña..." required>
                                    </div>
                                    
                                    <button href="index.html" class="btn btn-primary btn-block mt-4 " id="logine" >
                                        Ingresar
                                    </button>
                                    
                                </form>
                                <hr>
                                <div class="text-center my-4">
                                    <!-- <a class="small" href="forgot-password.html">¿Olvidaste tu contraseña?</a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mine JavaScript -->
        <script type="text/javascript" src="js/logeo.js"></script>


        <!-- Popper.js, then Bootstrap JS -->
      
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script></body>

</html>