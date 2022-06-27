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

   <main>
      <div class="Reglas"> <font face="BEBAS"><h3>INICIO DE SESIÓN</h3></font></div>
       
   </main>
   <section>
       <center>
           <form method="post" action="verificacion.php">
              <div id="Tit">
                  <center><font face="BEBAS"><H1>Ingresa al Sistema</H1></font></center>
              </div>
              <br>
              <table>
                 <tr  class="grupo">
                  <td>Usuario</td>
                  <td><input type="text" name="usuario" required></td>
                  </tr>
                  <tr class="grupo">
                      <td>Contraseña</td>
                      <td><input type="password" name="password" required></td>
                  </tr>
              </table>
              <div id="ingresar">
                  <center><button type="submit"> Ingresar</button></center>
              </div>
           </form>
       </center>
   </section>
    
</body>
</html>