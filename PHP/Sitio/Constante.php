<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Definicion de Constantes</title>
</head>
<body>
  <?php
    
   define("CONSTANT","Hola , estamos en le Cetis 44");
    echo CONSTANT;
    ?>
    <hr>
    <?php 
        define("Radio",24);
        define("PI",3.1416);
        $circuferencia = 2*PI*Radio;
        echo "<h2>La circuferenccia del circulo es : $circuferencia </h2>";
    ?>
</body>
</html>