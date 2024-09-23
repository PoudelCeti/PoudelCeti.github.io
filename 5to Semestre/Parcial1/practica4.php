<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];

    echo "<h3>1. ¿Quién es el hermano de Mario Bros? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Luigi</h5>";
    if($pregunta1 == "Luigi"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }


    echo "<h3>2. ¿Quién es la mascota oficial de SEGA? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Sonic</h5>";
    if($pregunta2 == "Sonic"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }


    echo "<h3>3. Villanos de la franquicia Sonic (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Shadow / Dr. Eggman</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "Shadow" || $pregunta3[$i] == "Dr. Eggman"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    


        echo "<h3>4. Personaje de caricatura acompañado de un elefante rosa y un pato amarillo con sombrero verde </h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = Pocoyo</h5>";
        if($pregunta4 =="Pocoyo"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }


        echo "<h3>5. “¡YA BASTA _________¡”</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = FREEZER</h5>";
        if(strtoupper($pregunta5) == "FREEZER"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";

        }



    
   
    echo "<h3>6. ¿A quién mató Freezer y provocó la transformación de Goku a SSJ1? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = Krilin </h5>";
    if($pregunta6 == "Krilin"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
   

   
    echo "<h3>7. “¡KAME_____HA!”</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = HAME</h5>";
    if(strtoupper($pregunta7) == "HAME"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
 

   
    echo "<h3>8. ¿Quiénes conforman el Equipo 7 junto con Naruto? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta8)." ---- Correcta = Sasuke / Sakura </h5><br>";
    $p8 = 0;

    if(count($pregunta8) == 2){
        for($i=0; $i<count($pregunta8); $i++){
            if($pregunta8[$i] == "Sasuke" || $pregunta8[$i] == "Sakura"){
                $p8 ++;
            }
        }
        if($p8 == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    



        echo "<h3>9. ¿Como se llama el Sensei del Equipo 7?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Kakashi </h5>";
        if($pregunta9 =="Kakashi"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }




        echo "<h3>10. “Si te atreves a ponerle una mano a mi Sensei, ¡TE _____!”</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = MATO</h5>";
        if(strtoupper($pregunta10) == "MATO"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }


    echo "CALIFICACIÓN FINAl = " . ($aciertos*10) . "%";

?>