<?php

    echo '<h1>'."El manejo de las variables".'</h1>';

        $nombres="Joel";
        $edad=16;

    echo $nombres."  ".$edad.'<br>';

        $var1=5;
        $var2=10;
        $sum=$var1+$var2;

    echo "El valor de la suma es :".$sum.'<br>';
    echo "El resultado de exponente 2 de Suma
    es:".pow($sum,2);

?>

<?php
  echo "'<h1>Tipos de Datois</h1>'";
  echo "Numeros Enteros <br>";

    $a= 1234; #Enteros Decimales 
    $b = -123; #Numeros Negativos
    $c = 0123; #Numero octal(equivale al 83 en decimal)
    $d = 0x12; #Numero exadecimal 
echo "Numeros flotantes <br>";

    $e = 1.234;
    $f = 1.2e3;
echo " Otros tipo de datos que soporta php<br>";
    $g=new array ("papas","tomates"); //arreglos 
    $h=new NombreClase(); 
    $i= "Hola esta es una cadena";


?>