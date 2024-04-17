<?php

session_start();
$_SESSION['dato'] = 0;

include "../Modelo/Validacion.php";

$instans = new Acces();

$instans->Acceso($_POST);

$Retorna = $instans->Acceso($_POST);

if (is_array($Retorna)) {

    if ($Retorna[0] == "Administrador") {
        $_SESSION['dato'] = "Administrador";
        include "../Vista/Matriplant.php";
    } else if ($Retorna[0] == "Personal Gestion Matricula") {
        $_SESSION['dato'] = "Personal Gestion Matricula";
        include "../Vista/Matriplant.php";
    } else if ($Retorna[0] == "Estudiante") {
        $_SESSION['dato'] = "Estudiante";
        include "../Vista/Matriplant.html";
    }
} else {
    echo "<p style='background-color:#FF3600;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif'>DATOS DE USUARIO INCORRECTOS, VUELVE A INTENTARLO</P>";
    include "../Vista/Inicio.html";
}
