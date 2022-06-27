<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>sol</title>
</head>
<body>
  <?php
   define("distancia",149.6e6);
    $sol=distancia;
   echo "<h3>La Distancia ente el sol y la tierra : $sol</h3>";
    
    define("circuferencia",4e4);
    $circu=circuferencia; 
    echo "<h3>La Circuferencia del planeta es  : $circu</h3>";
    
    $vuelta=distancia/circuferencia;
    
    echo "<h4>Las Vueltas que tienes que dar es  : $vuelta </h4>"
    ?>
</body>
</html>