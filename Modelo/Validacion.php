<?php

class Acces
{

    public function Acceso($logic)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas', 'root');
        $Consulta = $Conexion->prepare("CALL Accesos(?,?)");
        $Consulta->bindParam(1, $logic['txt1']);
        $Consulta->bindParam(2, $logic['txt2']);
        $Consulta->execute();
        $Respuesta = $Consulta->fetch();
        return $Respuesta;
    }

    public function Consultar()
    {
    }

    public function Actualizar()
    {
    }

    public function Eliminar()
    {
    }
}
