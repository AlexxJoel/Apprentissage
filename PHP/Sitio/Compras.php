<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Compras</title>
</head>
<body>
   <h2>Supermercado</h2>
       
        <?php 
         $leche=25;
         $panes=50;
         $huevo=35;
         $carne=150;
         
    echo '<li>1 Leche:'.$leche.'</li>';
    echo '<li>8 Panes:'.$panes.'</li>';
    echo '<li>1Kg Huevo:'.$huevo.'</li>';
    echo '<li>1 1/2 kg Carne:'.$carne.'</li>';
    
        $sub=$leche+$panes+$huevo+$carne;
    
    echo '<p>El subtotal de la compra es de = '.$sub.'</p>';
     
         $a=$sub*0.16;
    
    echo '<p>El iva es de  = '.$a.'</p>';
        
        $tot=$sub+$a;
    
     echo '<p><b>El total es de  = '.$tot.'</b></p>';
            
        
        ?>
    
</body>
</html>