function somme(){

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
    document.getElementById("t3").value = c;
}
function soustraction(){

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
    document.getElementById("t3").value = c;
}
function multiplication(){

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
    document.getElementById("t3").value = c;
}
function diviser(){

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
    document.getElementById("t3").value = c;
    if (Number(b) === 0) { document.getElementById("t3").value = "Erreur : division par 0"; return; }

}
function pair()
{
	var x = document.getElementById("t3").value
	if (x % 2 ==0){
    	document.getElementById("t4").value = " Paire "
	}
	else{
    	document.getElementById("t4").value = " Impaire "
	}
}
function permute() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    var x = a;
        a = b;
        b = x;

    document.getElementById("t1").value = a;
    document.getElementById("t2").value = b;
}
function reset() {
    document.getElementById("t1").value = "";
    document.getElementById("t2").value = "";
    document.getElementById("t3").value = "";
    document.getElementById("t4").value = "";
}