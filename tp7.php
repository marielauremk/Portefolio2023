<HTML>
<HEAD>
<meta charset="utf-8">
</HEAD>
<BODY>
<?php
$a=$_REQUEST['t1'];
$b=$_REQUEST['t2'];
if ($a=='adminadmin' and $b=='adminadmin')
{
    echo " Bienvenu M.admin : votre mot de passe est correct.<br/> ";
    echo "vous êtes connecté".Date("d/m/y"). "<br/>";
    echo "il est". Date("H:i:s"). "<br/>"; 
}
 
else
    echo "M. $b votre mot de passe est incorrect" . "<br/>";

?>
<INPUT Type=button value = "retour" onclick = "self.history.back();">
</BODY>
</HTML>
