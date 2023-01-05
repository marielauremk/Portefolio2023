function total()
{
    var a = document.getElementById("t4").value; 
    var b = document.getElementById("t8").value; 
    var c = document.getElementById("t12").value; 
    var d = document.getElementById("t16").value; 
    var e = document.getElementById("t20").value; 
    var f = document.getElementById("t24").value; 
    var g = document.getElementById("t28").value; 
    var h = document.getElementById("t32").value; 
    var i = document.getElementById("t36").value; 
    var j = document.getElementById("t40").value; 
    var k = document.getElementById("t44").value; 
  
   
   var sous_total= Number(a) + Number(b) + Number(c) + Number(d) + Number(e) + Number(f) + Number(g) + Number(h) + Number(i) + Number(j) + Number(k)
   var remise= Number(sous_total)*Number(80)/Number(100)
   t01.value = sous_total;
}