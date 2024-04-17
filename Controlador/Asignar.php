<?php

session_start();

include "../Modelo/Asignacion.php";

$instancia = new Curso();

if($_SESSION['dato'] == "Administrador")

 {

$retornar = $instancia -> Registrar($_POST);

if($retornar == 1){
    include "../Vista/ASS.php";
    echo "<p style='background-color:#138D75;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif'>CURSO ASIGNADO EXITOSAMENTE</P>";
    
}
else if(str_contains($retornar, 'SQLSTATE[23000]: Integrity constraint violation: 1062')){
    include "../Vista/ASS.php";
    echo "<p style='background-color:#DED407;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif'>NUMERO DE IDENTIFICACION REPETIDO, ASIGNACION DE CURSO FALLIDO</P>";
  
}
else if(str_contains($retornar, 'SQLSTATE[HY000] [2002]')){
    include "../Vista/ASS.php";
    echo "<p style='background-color:#DE0707;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif'>SERVIDOR FUERA DE LINEA, COMPRUEBA LA CONEXION A INTERNET O INTENTELO MAS TARDE</P>";
    
}

 }

 else if($_SESSION['dato'] == "Personal Gestion Matricula")

 {

$retornar = $instancia -> Registrar($_POST);

if($retornar == 1){
    include "../Vista/ASS.php";
    echo "<p style='background-color:#138D75;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif'>CURSO ASIGNADO EXITOSAMENTE</P>";
    
}
else if(str_contains($retornar, 'SQLSTATE[23000]: Integrity constraint violation: 1062')){
    include "../Vista/ASS.php";
    echo "<p style='background-color:#DED407;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif'>NUMERO DE IDENTIFICACION REPETIDO, ASIGNACION DE CURSO FALLIDO</P>";
  
}
else if(str_contains($retornar, 'SQLSTATE[HY000] [2002]')){
    include "../Vista/ASS.php";
    echo "<p style='background-color:#DE0707;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif'>SERVIDOR FUERA DE LINEA, COMPRUEBA LA CONEXION A INTERNET O INTENTELO MAS TARDE</P>";
    
}

 }

 else
 {
    header("Location:../Vista/Inicio.html");
 }

?>