<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registro de Becas</title>
    <style>
        table,tr,th,td {}
    </style>
</head>
<body>
   <main>
       <font face="BEBAS"><h1>Bienvenido</h1></font>
       
   </main>
   <section>
       <center>
           <form method="post" action="verificacion.php">
              <div id="Tit">
                  <center><font face="BEBAS"><H1>Ingresa al Sistema</H1></font></center>
              </div>
              <br>
              <table>
                 <tr>
                  <td>Usuario</td>
                  <td><input type="text" name="usuario" required="true"></td>
                  </tr>
                  <tr>
                      <td>Contraseña</td>
                      <td><input type="password" name="password" required="true"></td>
                  </tr>
              </table>
              <div id="ingresar">
                  <center><input type="submit" value="Ingresar"></center>
              </div>
           </form>
       </center>
   </section>
    
</body>
</html>