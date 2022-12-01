function calcul_moyenne()
{
    var a = document.getElementById("t1").value; 
    var b = document.getElementById("t3").value; 
    var c = document.getElementById("t5").value; 
    var e = document.getElementById("t2").value; 
    var f = document.getElementById("t4").value; 
    var g = document.getElementById("t6").value; 

    var m = Number(e) + Number(f) + Number(g)

    var h = Number(a)*Number(e) + Number(b)*Number(f) + Number(c)*Number(g)
    var i = h / m ;

    t7.value = i; 

    



 if (i<10)
    t8.value = "Redoublant";
    else if (i<13)
    t8.value = "Passable";
    else if (i<15)
    t8.value = "mention bien";
    else (i>=16)
    t8.value = "mention tres bien"

}