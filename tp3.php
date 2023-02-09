<html>
<body>
    <p> Nous sommes le <?php echo Date("j/m/Y"); ?> </p>
    <br>
<?php
    echo "il est".Date("H:i:s")."<br>";
    if(Date("H") <12){
        echo "Bon matin ..";

    }
    else{
        echo "Bonne apres midi ..";

    }
?>
</body>
</html>