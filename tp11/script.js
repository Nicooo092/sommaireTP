function calcul_moyenne() {
    var n1 = prompt("Donner la première note:");
    var n2 = prompt("Donner la deuxième note:");
    var n3 = prompt("Donner la troisème note:");

    var somme = Number(n1) + Number(n2) + Number(n3);
    
    document.write("Voici la somme :" + somme + "<br>");

    var moyenne = somme/3;

    document.write("Voici la moyenne :" + moyenne + "<br>");
    
    if (moyenne < 10){
        document.write("Redoublant");
    }
    else if (moyenne < 12){
        document.write("Admis – Passable");
    }
    else if (moyenne < 14){
        document.write("Admis – Bien");
    }
    
    else

        document.write("Admis - très bien");
    document.write('<br><button onclick="location.reload()">Menu principal</button>');
}


function test_temp() {
    var temp = prompt("Votre température actuelle ?");
    if (temp < 10) {
        document.write("Température froide")
        document.bgColor="blue";
    
    }
    else if (temp < 24) {
        document.write("Température normale")
        document.bgColor="green";
    
    }
    else if (temp < 25) {
        document.write("Température chaude")
        document.bgColor="red";
    
    }
    document.write('<br><button onclick="location.reload()">Menu principal</button>');
}


function comp_nombre() {
var a = prompt("Entrez le premier nombre :");
var b = prompt("Entrez le deuxième nombre :");

    if (a > b) {
        document.write("Le plus grand nombre est " + a + "<br>");
        document.write("Le plus petit nombre est " + b);
    } else if (b > a) {
        document.write("Le plus grand nombre est " + b + "<br>");
        document.write("Le plus petit nombre est " + a);
    } else {
        document.write("Les nombres sont égaux : " + a);
}
    document.write('<br><button onclick="location.reload()">Menu principal</button>');

}


function aleatoire() {
    var a = Math.floor(Math.random() * 20) + 1;
    var b = prompt("Saisissez un nombre entre 1 et 20");

    b = Number(b);
    var message = "";

    if (b < a) {
        message = "Votre nombre est inférieur au chiffre secret !";
    } else if (b > a) {
        message = "Votre nombre est supérieur au chiffre secret !";
    } else if (b === a) {
        message = "Félicitations ! Vous avez trouvé le nombre : " + a;
    } else {
        message = "Veuillez entrer un nombre valide !";
    }
    document.write("<h2>" + message + "</h2>");
    document.write("<p>Nombre secret : " + a + "</p>");
    document.write("<p>Nombre saisi : " + b + "</p>");
    document.write('<br><button onclick="location.reload()">Menu principal</button>');
}
