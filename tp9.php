<?php
$a=$_REQUEST['t1'];

$factorial = 1 ;
for ($i = 1; $i <= $a ; $i++){
    $factorial = $factorial*$i ;
}
    echo "Voici le factoriel :  " . $factorial;
?>
