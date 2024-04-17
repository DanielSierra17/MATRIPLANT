<?php

class Salud{

    public function Registrar($datos)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $insercion = $Conexion -> prepare("CALL RegistrarAlergias(?,?)");
        $insercion -> bindParam(1,$datos['txt1']);
        $insercion -> bindParam(2,$datos['txt2']);
        $insercion -> execute();
        return 1;
        }
        catch(Exception $E)
        {
            return $E->getMessage();
        }
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

?>