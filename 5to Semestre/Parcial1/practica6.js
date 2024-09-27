var ocultar = false;

function muestra_texto(){
    if(!ocultar){
        document.getElementById("texto").innerHTML = "Lorem adfafa aj a fjbafafahfah a fa fh a  ararafafafaf afrafaf3ffcfafaf"
        ocultar = true;
        document.getElementById("mostrar").innerHTML = "Mostrar menos"
    }else{
        document.getElementById("texto").innerHTML = "adadadadadadadadadad"
        ocultar = false;
        document.getElementById("mostrar").innerHTML = "Mostrar mas"
    }

}

function lanzar_dado(){
    var numero = Math.floor(Math.random() * 6) + 1;
    document.getElementById("imagen_dado").innerHTML = "<img src-'dado" + numero + ".png' width-'100px'>";
}