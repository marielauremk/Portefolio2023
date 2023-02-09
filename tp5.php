<?php
$a=$_REQUEST['t1']; /* pour récuper une variable qui se trouve dans un autre document*/
$b=$_REQUEST['t2'];
$s=$a+$b;
$p=$a*$b;
$r=$a%$b;
$d=$a/$b;
echo 'voilà la somme: '. $s.'<br>';
echo 'voilà la produit: '. $p.'<br>';
echo 'voilà le reste de la division: '. $r.'<br>';
echo 'voilà la division: '. $d.'<br>';
?>