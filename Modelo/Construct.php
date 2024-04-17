<?php

class Proceso{

    public function Consultar($Nota)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Consulta = $Conexion -> prepare("CALL ConsultarUsuario(?)");
        $Consulta -> bindParam(1,$Nota['txt1']);
        $Consulta -> execute();
        $valor = $Consulta -> fetchAll(PDO::FETCH_ASSOC);
        return $valor;
    }

    public function ConsultarPerfil($Perfil)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $process = $Conexion -> prepare("CALL ConsultaPerfil(?)");
        $process -> bindParam(1, $Perfil['txt1']);
        $process -> execute();
        $matriz = $process -> fetchAll(PDO::FETCH_ASSOC);     
        return $matriz;
    }

    public function ConsultarMatricula($Mat)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Creador = $Conexion -> prepare("CALL ListadoMatricula");
        $Creador -> execute();
        $fruto = $Creador -> fetchAll(PDO::FETCH_ASSOC);
        return $fruto;
    }

    public function ConsultarCurso($Corso)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Variable = $Conexion -> prepare("CALL ConsultarCurso");
        $Variable -> execute();
        $zesga = $Variable -> fetchAll(PDO::FETCH_ASSOC);     
        return $zesga;
    }

    public function ConsultarAlergias($Aler)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Comando = $Conexion -> prepare("CALL ConsultarAlergias(?)");
        $Comando -> bindParam(1,$Aler['txt1']);
        $Comando -> execute();
        $proc = $Comando -> fetchAll(PDO::FETCH_ASSOC);
        return $proc;
    }

    public function ConsultarAsignacion($Log)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Num = $Conexion -> prepare("CALL ConsultarAsignados");
        $Num -> execute();
        $luz = $Num -> fetchAll(PDO::FETCH_ASSOC);     
        return $luz;
    }

    public function ConsultarAcudiente($Padre)
    {
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Hijo = $Conexion -> prepare("CALL ConsultarAcudiente(?)");
        $Hijo -> bindParam(1,$Padre['txt1']);
        $Hijo -> execute();
        $madre = $Hijo -> fetchAll(PDO::FETCH_ASSOC);
        return $madre;
    }

    public function Actualizar($Var)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Variable = $Conexion -> prepare("CALL Actualizacion(?,?,?,?,?,?,?,?,?,?,?)");
        $Variable -> bindParam(1, $Var['txt1']);
        $Variable -> bindParam(2, $Var['txt2']);
        $Variable -> bindParam(3, $Var['txt3']);
        $Variable -> bindParam(4, $Var['txt4']);
        $Variable -> bindParam(5, $Var['txt5']);
        $Variable -> bindParam(6, $Var['txt6']);
        $Variable -> bindParam(7, $Var['txt7']);
        $Variable -> bindParam(8, $Var['txt8']);
        $Variable -> bindParam(9, $Var['txt9']);
        $Variable -> bindParam(10, $Var['txt10']);
        $Variable -> bindParam(11, $Var['txt11']);
        $Variable -> execute();
        return 1;
        }
        catch(Exception $e)
        {
            return $e->getMessage(); 
        }
    }

    public function Cambiar($Acu)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Acudiente = $Conexion -> prepare("CALL ActualizacionAcudiente(?,?,?)");
        $Acudiente -> bindParam(1, $Acu['txt1']);
        $Acudiente -> bindParam(2, $Acu['txt2']);
        $Acudiente -> bindParam(3, $Acu['txt3']);
        $Acudiente -> execute();
        return 1;
        }
        catch(Exception $e)
        {
            return $e->getMessage(); 
        }
    }

    public function Modificar($Gripa)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Alergias = $Conexion -> prepare("CALL ActualizacionAlergias(?,?)");
        $Alergias -> bindParam(1, $Gripa['txt1']);
        $Alergias -> bindParam(2, $Gripa['txt2']);
        $Alergias -> execute();
        return 1;
        }
        catch(Exception $e)
        {
            return $e->getMessage(); 
        }
    }

    public function Alterar($Ingreso)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Seleccion = $Conexion -> prepare("CALL ActualizacionMatricula(?,?,?)");
        $Seleccion -> bindParam(1, $Ingreso['txt1']);
        $Seleccion -> bindParam(2, $Ingreso['txt2']);
        $Seleccion -> bindParam(3, $Ingreso['txt3']);
        $Seleccion -> execute();
        return 1;
        }
        catch(Exception $e)
        {
            return $e->getMessage(); 
        }
    }

    public function Combinar($Salon)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Aula = $Conexion -> prepare("CALL ActualizacionCurso(?,?,?)");
        $Aula -> bindParam(1, $Salon['txt1']);
        $Aula -> bindParam(2, $Salon['txt2']);
        $Aula -> bindParam(3, $Salon['txt3']);
        $Aula -> execute();
        return 1;
        }
        catch(Exception $e)
        {
            return $e->getMessage(); 
        }
    }

    public function Renovar($Procede)
    {
        try{
        $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
        $Gremio = $Conexion -> prepare("CALL ActualizacionAsigna(?,?)");
        $Gremio -> bindParam(1, $Procede['txt1']);
        $Gremio -> bindParam(2, $Procede['txt2']);
        $Gremio -> execute();
        return 1;
        }
        catch(Exception $e)
        {
            return $e->getMessage(); 
        }
    }

    public function Eliminar($Flamengo)
    {
        try{
            $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
            $Internacional = $Conexion -> prepare("CALL Inactivar(?)");
            $Internacional -> bindParam(1, $Flamengo['Elim1']);
            $Internacional -> execute();
            return 1;
            }
            catch(Exception $e)
            {
                return $e->getMessage(); 
            }
    }

    public function EliminarAcudiente($Santos)
    {
        try{
            $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
            $Paranaense = $Conexion -> prepare("CALL InactivarAcudiente(?)");
            $Paranaense  -> bindParam(1, $Santos['Elim1']);
            $Paranaense  -> execute();
            return 1;
            }
            catch(Exception $e)
            {
                return $e->getMessage(); 
            }
    }

    public function EliminarAlergias($Flamengo)
    {
        try{
            $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
            $Internacional = $Conexion -> prepare("CALL InactivarAlergias(?)");
            $Internacional -> bindParam(1, $Flamengo['Elim1']);
            $Internacional -> execute();
            return 1;
            }
            catch(Exception $e)
            {
                return $e->getMessage(); 
            }
    }

    public function EliminarMatricula($Flamengo)
    {
        try{
            $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
            $Internacional = $Conexion -> prepare("CALL InactivarMatricula(?)");
            $Internacional -> bindParam(1, $Flamengo['Elim1']);
            $Internacional -> execute();
            return 1;
            }
            catch(Exception $e)
            {
                return $e->getMessage(); 
            }
    }

    public function EliminarAsigna($Flamengo)
    {
        try{
            $Conexion = new PDO('mysql:host=localhost;dbname=gestionmatriculas','root');
            $Internacional = $Conexion -> prepare("CALL InactivarAsignacion(?)");
            $Internacional -> bindParam(1, $Flamengo['Elim1']);
            $Internacional -> execute();
            return 1;
            }
            catch(Exception $e)
            {
                return $e->getMessage(); 
            }
    }

}

?>