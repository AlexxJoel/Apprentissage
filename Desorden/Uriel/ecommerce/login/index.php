<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Formulario de logeo</title>  
	
   <link rel="stylesheet" type="text/css" href="css/style3.css"> 
</head>

<body >


    <div class="login-box">
    <img src="css/avatar.png" class="avatar">
        <h1>ADMIN</h1>
            <form method="post" action="validate.php" name="form1" id="form1">
            <p>Usuario</p>
            <input name="usuario_usuario" type="text"  value="" placeholder="Enter Username" id="login-name">
            <p>Password</p>
            <input  name="usuario_contra" type="password"  value="" placeholder="Enter Password" id="login-pass">
            <input type="submit" class="btn btn-primary btn-large btn-block" value="Iniciar sesion">
            <a href="modulos/registro.html">Registrarse</a>
            </form>
        
        
        </div>
  


<!-- particles.js container -->
<div class="conianer" id="particles-js">
</div>


 
	
<!-- scripts -->
<script src="particles.js"></script>
<script src="js/js/app.js"></script>
  <script>
  var count_particles, stats, update;
  stats = new Stats;
  stats.setMode(0);
  stats.domElement.style.position = 'absolute';
  stats.domElement.style.left = '0px';
  stats.domElement.style.top = '0px';
  document.body.appendChild(stats.domElement);
  count_particles = document.querySelector('.js-count-particles');
  update = function() {
    stats.begin();
    stats.end();
    if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
      count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
    }
    requestAnimationFrame(update);
  };
  requestAnimationFrame(update);
</script>


</body>
</html>
