<?php

include "../Modelo/Construct.php";

$Curitiba = new Proceso();

$Chapecoense = $Curitiba -> EliminarAcudiente($_GET);

if($Chapecoense == 1)
{
    include "../Vista/MAT2.php";
    echo "<p style='background-color:#138D75;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif;margin-top: 300px'>DATOS ELIMINADOS EXITOSAMENTE</P>";
}
else if(str_contains($Chapecoense, 'SQLSTATE[HY000] [2002]')){
    include "../Vista/MAT2.php";
    echo "<p style='background-color:#DE0707;color:white;text-align:center;clear:both;font-family: 'Source Sans Pro', sans-serif;margin-top: 300px'>SERVIDOR FUERA DE LINEA, COMPRUEBA LA CONEXION A INTERNET O INTENTELO MAS TARDE</P>";
}
else
{
    echo $Chapecoense;
}

?>