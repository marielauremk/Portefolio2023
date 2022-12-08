function affichagetab()
{
    document.write("<table border=2px width=30%");
    for(let i=0 ; i <= 5; i++)
    {
        document.write('<tr> <td>*</td> <td>*</td> <td>*</td> </tr>');
    }
    document.write('</table>');
}

function affichagetab2()
{
    var ligne = prompt("Donner le nombre de ligne");
    document.write("<table align=center border=2px width=30%" );
    for(let i=1; i <= ligne; i++) /* permet de compter ( fait un pas de un à un) */
    {
        document.write('<tr> <td>'+i+'</td> <td>je</td> <td>suis</td> </tr>');
    }
    document.write('</table>');
}

function seconnecter()
{
    var login = prompt("saisir votre identifiant");
    var pwd= prompt("saisir le mot de passe ");

    if (login == 'marie' && pwd == 'laure')
    document.write('Welcomen');
    else
    alert("saisir à nouveau les login et pwd");
    

}

function seconnecter2()
{
    var i =0
    do
    {
        var login = prompt("saisir votre identifiant");
        var pwd= prompt("saisir le mot de passe ");
        if (login == 'marie' && pwd == 'laure')
        {
            document.write("Bienvenue  :  "+id);
            break;
        }
        else 
        alert("Accès refusé");
        i+=1; /* correspond à i=i+1  çela la signifie que le i va prendre l'ancienne valeur plus 1*/
    }
    while (i<3);
{ 
    if (i==3)
    alert("Délai dépassé");
}

}

function cdc()
{
    var chaine = prompt("Donner un mot");
    document.write(chaine.toUpperCase()+"<br>"); /* pour mettre en majuscule */
    document.write(chaine.toLowerCase()+"<br>"); /* pour mettre en minuscule */
    document.write("a chaine continent  " + chaine.length+" caractères  " + "<br>"); /* lenght donne la taille du mot */
    document.write("la première lettre est   " + chaine.substr(0,1)+"<br>"); /* 0 correspond à la première lettre du mot, 1 correspond au nombre de lettre à afficher */
}

function switch2() /* switch = selon */
{ 
    var color = prompt ("entrer une couleur");
    switch(color)   
{ 
    case "rouge" : document.body.style.background = "red" ;
    break;
    case "ROUGE" : document.body.style.background = "red" ;
    break;
    case "bleu" : document.body.style.background = "blue" ;
    break;
    case "BLEU" : document.body.style.background = "blue" ;
    break;

    default:alert("couleur non définie");


}
}

function bonus()
{  
    var totalf = 0
    var total = ""
    var c = ""
    do{
        var article = prompt("Votre article")
        var price = prompt("Le prix")
        var quantite = prompt("La quantité")

        total = Number(price)*Number(quantite) 
        totalf += total 
        c += ("Article : " +article+" <br> PRIX : "+price +"€"+ " <br> Quantité : "+quantite+ " <br> Total : "+total+"€"+"<br><br><br>")
        

        next = prompt("Voulez vous continuer (OUI/STOP) ?")
    }
    while(next != "STOP");
    document.write(c);
    document.write(" TOTAL FINAL : "+totalf+"€");
    



}