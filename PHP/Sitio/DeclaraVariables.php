<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
   <?php
        $nombre='Joel'; //declaracion de variables
        echo $nombre;
    ?>
    
    <?php
    echo '<hr>';
    
        $var="La colonia Alta Vista";
        $Var="Pertenece a la ciudad de Cuernavaca";
        echo "$var,$Var";
    ?>
        <hr>
        <h1>Variable por referencia </h1>
    <?php
        $A="Niño";
        $B="Feliz";
        $C="$A $B";
        echo $C.'<br>';
    
    $nombre="Elena";
    $trabajador= &$nombre;
    $gafete="Mi gafete dice ";
    echo "$gafete:$trabajador <br>";
    echo " Y soy la trabajadora : $nombre";
    
    ?> 
</body>
</html>