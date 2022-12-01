function calcul_moyenne()
{
    var note1=prompt("Donner une première note svp:"); /* prompt=entrée */
    var note2=prompt("Donner une deuxième note svp:"); /* var= boite */
    var note3=prompt("Donner une troisième note svp:");
    var note4=prompt("Donner une quatrième note svp:");
   


    var somme = Number(note1)*2 + Number(note2)*2 + Number(note3)*2 + Number(note4)*3 ;

    var moyenne= somme / 9 ;

    document.write("Voici la somme: " +somme + "      ");
    document.write("Voici la moyenne: " +moyenne);

    if (moyenne<10) /* pas de ; car une condition */
        document.write("vous êtes redoublant ");
        else
        document.write("vous êtes admis");

}

function age_test()
{
    var age=prompt("Entrer votre âge:");

    if (age<18)
        document.write("vous êtes mineur ");
        else 
        document.write("vous êtes majeur ");
    
}

function simple_affichage()
{
    var nom=prompt("Quel est votre nom?:");
    var prenom=prompt("Quel est votre prenom?:");

    document.write("<div style='background-color:blue; border:4px solid black; heigth:30px; margin:auto; text-align:center; width:300px;'>");
    document.write("<p1 style='color:red';>Bonjour " + prenom + " "+ nom+ "</p1>");
    document.write("</div>")
}

function test_color()
{
    var couleur=prompt("Quel couleur vous voulez?:");
    if (couleur == "rouge" || couleur=='ROUGE' || couleur== 'R' ) /* == correspond à une affectaction (pour faire un test) */
    document.body.style.background="red";
    else if (couleur == 'bleu' || couleur== 'BLEU' || couleur=='B')
    document.body.style.background="blue";
    else if (couleur == 'vert' || couleur== 'VERT' || couleur== 'V')
    document.body.style.background="green";
    else 
    alert("couleur inconnue !  ...") /* alert pour ecrire un message */


}
function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    var s = Number(a) + Number(b);

    t3.value = s;
}

function soustraction()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    var s = Number(a) - Number(b);

    t3.value = s;

}

function produit()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    var s = Number(a) * Number(b);

    t3.value = s;

}

function division()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    var s = Number(a) / Number(b);

    t3.value = s;

}

function parite()
{
    var x = Number(document.getElementById("t1").value)
    if (x%2==0) { /* l'accolade permet de faire une double alert */
    alert("nombre est pair !  ...");
    t3.value = " le nombre est pair"}
    else 
    {
    alert("le nombre est impair !  ...");
    t3.value = "le nombre est impair "}

}
    function swap()
{
    var v3 = "";
    a = document.getElementById("t1").value;
    b = document.getElementById("t2").value;
    v3=a;
    a=b;
    b=v3;

    t1.value = a;
    t2.value = b;
}