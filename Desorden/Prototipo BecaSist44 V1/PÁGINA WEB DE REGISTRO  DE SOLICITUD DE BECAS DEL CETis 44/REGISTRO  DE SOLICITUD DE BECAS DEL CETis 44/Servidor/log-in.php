<?php require_once '../conexion.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registro de Becas</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>

   <header class="encabezado">
    <nav>
      <div class="logo">
        <p><a href="../index.html">Becas</a></p>
      </div>
      <div class="gris">Bienvenido</div>
      <div class="enlaces">
        <!-- <ul>
          <li><a href="#">Acerca De</a></li>
        </ul> -->
      </div>
    </nav>
  </header>

      <div class="Reglas">
        <h3>INICIO DE SESIÓN</h3>
      </div>
       

           <form method="POST" action="verificacion.php">
              <div class="form"> 
              
                  <H1>Ingresa al Sistema</H1>
                
                <div class="grupo">
                  <label>Administrador</label>         
                    <input type="text" name="usuario" required placeholder="Ingresa el usuario">           
                </div>
                
                <div class="grupo">
                  <label>Contraseña</label>         
                    <input type="password" name="password" required placeholder="Ingresa la contraseña">           
                </div>

                    <button type="submit" name="entara"> Ingresar</button>
        
           </form>
    
</body>
</html>