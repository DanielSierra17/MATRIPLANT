<?php

include "../Modelo/Construct.php";

$codigo = new Proceso();

$Reaccion = $codigo -> Alterar($_POST);

if($Reaccion == 1){
    include "../Vista/MAT2.php";
    echo "<p style='background-color:#138D75;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif;margin-top: 300px'>DATOS ACTUALIZADOS EXITOSAMENTE</P>";
}
else if(str_contains($Reaccion, 'SQLSTATE[23000]: Integrity constraint violation: 1062')){
    include "../Vista/MAT2.php";
    echo "<p style='background-color:#DED407;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif;margin-top: 300px'>ACTUALIZACION DE DATOS REPETIDA</P>";
}
else if(str_contains($Reaccion, 'SQLSTATE[HY000] [2002]')){
    include "../Vista/MAT2.php";
    echo "<p style='background-color:#DE0707;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif;margin-top: 300px'>SERVIDOR FUERA DE LINEA, COMPRUEBA LA CONEXION A INTERNET O INTENTELO MAS TARDE</P>";
}

else
{
    echo $Reaccion;
}

?>