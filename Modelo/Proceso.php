<?php

class Usuario{

    public function Registrar($datos)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $insercion = $Conexion -> prepare("CALL RegistrarUsuario(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $insercion -> bindParam(1,$datos['txt1']);
        $insercion -> bindParam(2,$datos['txt2']);
        $insercion -> bindParam(3,$datos['txt3']);
        $insercion -> bindParam(4,$datos['txt4']);
        $insercion -> bindParam(5,$datos['txt5']);
        $insercion -> bindParam(6,$datos['txt6']);
        $insercion -> bindParam(7,$datos['txt7']);
        $insercion -> bindParam(8,$datos['txt8']);
        $insercion -> bindParam(9,$datos['txt9']);
        $insercion -> bindParam(10,$datos['txt10']);
        $insercion -> bindParam(11,$datos['txt11']);
        $insercion -> bindParam(12,$datos['txt12']);
        $insercion -> bindParam(13,$datos['txt13']);
        $insercion -> bindParam(14,$datos['txt14']);
        $insercion -> bindParam(15,$datos['txt15']);
        $insercion -> bindParam(16,$datos['txt16']);
        $insercion -> bindParam(17,$datos['txt17']);
        $insercion -> bindParam(18,$datos['txt18']);
        $insercion -> bindParam(19,$datos['txt19']);
        $insercion -> bindParam(20,$datos['txt20']);
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