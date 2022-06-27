<?php

    $adivina=$_GET['adivina'];
    $numero=rand(1,10);
    
    if($adivina > $numero){
        echo "El numero $adivina es mas grande <br>";
        echo "Yo pense en el numero $numero lo siento no es igual";
    }
    
    if($adivina < $numero){
        echo "El numero $adivina es menor <br>";
        echo "Yo pense en el numero $numero lo siento no es igual";
    }
?>