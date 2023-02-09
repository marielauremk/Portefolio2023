<?php
$a=$_REQUEST['t1'];
$b=$_REQUEST['t2'];

for ($i= $a; $i <= $b; $i++) {
    if ($i % 2 == 0) { /* pour compter les nombres paires*/
     echo $i."<br/>";
    }
    
}
echo "fin des nombres paires";
?>