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
   m1.value = sous_total;
   var remise= Number(sous_total)*Number(80)/Number(100)
   m2.value = remise;
   var total1 = Number(t2) * Number(t3) 
   t4.value = total1;
   var total2 = Number(t6)* Number(t7) 
   t8.value = total2;
   var total3 = Number(t10) * Number(t11) 
   t12.value = total3;
   var total4 = Number(t14) * Number(t15)
   t16.value = total4;
   var total5 = Number(t18) * Number(t19)
   t20.value = total5;
   var total6 = Number(t22) * Number(t23) 
   t24.value = total6;
   var total7 = Number(t26)* Number(t27) 
   t28.value = total7;
   var total8 = Number(t30) * Number(t31) 
   t32.value = total8;
   var total9 = Number(t34) * Number(t35) 
   t36.value = total9;
   var total10 = Number(t38) * Number(t39) 
   t40.value = total10;
   var total11 = Number(t42) * Number(t43) 
   t44.value = total11;
   
}