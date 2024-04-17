<?php

if($_POST["tipoconsulta"]=="PERFIL")
{

    include "../Modelo/Construct.php";

    $ins = new Proceso();

    $matriz = $ins -> ConsultarPerfil($_POST);

    include "../Vista/MAT2.php";

    echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">';

    
    echo "<table class='table table-striped'><tr>
    <th>ACTIVO</th><th>NUMERO DE DOCUMENTO</th><th>PERFIL</th>
    <th>NOMBRE</th><th>PRIMER APELLIDO</th>
    <th>SEGUNDO APELLIDO</th>
    <th>TELEFONO</th><th>CORREO</th><th>FECHA DE NACIMIENTO</th><th>COLEGIO ANTIGUO</th><th>CIUDAD</th><th>DIRECCION</th>
    <th>BARRIO</th><th>ESTRATO</th><th>EXPERIENCIA</th><th>GENERO</th><th>EPS</th><th>RH</th><th>GRUPO SANGUINEO</th><th>MODIFICAR</th><th>ELIMINAR</th><tr>";
    foreach ($matriz as $fila)
    {
        echo "<tr>";
        
        foreach ($fila as $columna)
        {
            echo "<td>".$columna."</td>";
        }

        echo "<td><button type='button' class='btn btn-success'><a href='../Vista/Actualizar.php?dato1=".$fila["Num_identificacion"]."&dato2=".$fila["Telefono"]."&dato3=".$fila["Correo"]."&dato4=".$fila["Cargo"]."&dato5=".$fila["Ciudad"]."&dato6=".$fila["Direccion"]."&dato7=".$fila["Barrio"]."&dato8=".$fila["Estrato"]."&dato9=".$fila["Anos_de_Exp"]."&dato10=".$fila["EPS"]."' style='color:white;text-decoration:none;'>MODIFICAR</a></button></td>";
        echo "<td><button type='button' class='btn btn-danger'><a href='../Controlador/Eliminacion.php?Elim1=".$fila["Num_identificacion"]."' style='color:white;text-decoration:none;'>ELIMINAR</a></button></td>";

        echo "</tr>";

    }
    echo "</table>";

}

else if($_POST["tipoconsulta"]=="NUMERO DE DOCUMENTO"){

include "../Modelo/Construct.php";

$Pro = new Proceso();

$valor = $Pro -> Consultar($_POST);

include "../Vista/MAT2.php";

echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">';

echo "<table class='table table-striped'><tr>
<th>ACTIVO</th><th>NUMERO DE DOCUMENTO</th><th>NOMBRES</th>
        <th>PRIMER APELLIDO</th><th>SEGUNDO APELLIDO</th>
        <th>TELEFONO</th>
        <th>CORREO</th><th>PERFIL</th><th>FECHA DE NACIMIENTO</th><th>COLEGIO ANTIGUO</th><th>CIUDAD</th><th>DIRECCION</th>
        <th>BARRIO</th><th>ESTRATO</th><th>EXPERIENCIA</th><th>GENERO</th><th>EPS</th><th>RH</th><th>GRUPO SANGUINEO</th><th>MODIFICAR</th><th>ELIMINAR</th><tr>";
        
    foreach ($valor as $filas)
    {
        echo "<tr>";
        foreach ($filas as $columnas)
        {
            echo "<td>".$columnas."</td>";
        }

        echo "<td><button type='button' class='btn btn-success'><a href='../Vista/Actualizar.php?dato1=".$filas["Num_identificacion"]."&dato2=".$filas["Telefono"]."&dato3=".$filas["Correo"]."&dato4=".$filas["Cargo"]."&dato5=".$filas["Ciudad"]."&dato6=".$filas["Direccion"]."&dato7=".$filas["Barrio"]."&dato8=".$filas["Estrato"]."&dato9=".$filas["Anos_de_Exp"]."&dato10=".$filas["EPS"]."' style='color:white;text-decoration:none;'>MODIFICAR</a></button></td>";
        echo "<td><button type='button' class='btn btn-danger'><a href='../Controlador/Eliminacion.php?Elim1=".$filas["Num_identificacion"]."' style='color:white;text-decoration:none;'>ELIMINAR</a></button></td>";

        echo "</tr>";

    }
    echo "</table>";
}

else if($_POST["tipoconsulta"]=="NUMERO DE CEDULA"){

    include "../Modelo/Construct.php";
    
    $Parte = new Proceso();
    
    $total = $Parte -> ConsultarAcudiente($_POST);
    
    include "../Vista/MAT2.php";
    
    echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">';
    
    echo "<table class='table table-striped'><tr>
    <th>ACTIVO</th><th>CEDULA</th><th>NOMBRES</th>
        <th>APELLIDOS</th><th>PARENTESCO</th>
        <th>CORREO</th><th>TELEFONO</th><th>MODIFICAR</th><th>ELIMINAR</th><tr>";
        foreach ($total as $linea)
        {
            echo "<tr>";
            foreach ($linea as $segmento)
            {
                echo "<td>".$segmento."</td>";
            }

            echo "<td><button type='button' class='btn btn-success'><a href='../Vista/CambioAcudiente.php?dato1=".$linea["Cedula"]."&dato2=".$linea["Correo"]."&dato3=".$linea["Telefono"]."' style='color:white;text-decoration:none;'>MODIFICAR</a></button></td>";
            echo "<td><button type='button' class='btn btn-danger'><a href='../Controlador/ElimAcu.php?Elim1=".$linea["Cedula"]."' style='color:white;text-decoration:none;'>ELIMINAR</a></button></td>";
    
            echo "</tr>";
    
        }
        echo "</table>";
    }

    else if($_POST["tipoconsulta"]=="ALERGIAS"){

        include "../Modelo/Construct.php";
        
        $Aler = new Proceso();
        
        $Procede = $Aler -> ConsultarAlergias($_POST);
        
        include "../Vista/MAT2.php";
        
        echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">';
        
        echo "<table class='table table-striped'><tr>
        <th>ACTIVO</th><th>NUMERO DE DOCUMENTO</th><th>ALERGIAS</th>
        <th>MODIFICAR</th><th>ELIMINAR</th><tr>";
            foreach ($Procede as $trozo)
            {
                echo "<tr>";
                foreach ($trozo as $pedazo)
                {
                    echo "<td>".$pedazo."</td>";
                }
    
                echo "<td><button type='button' class='btn btn-success'><a href='../Vista/CambioAlergias.php?dato1=".$trozo["Num_Id"]."&dato2=".$trozo["Alergias"]."' style='color:white;text-decoration:none;'>MODIFICAR</a></button></td>";
                echo "<td><button type='button' class='btn btn-danger'><a href='../Controlador/ElimAler.php?Elim1=".$trozo["Num_Id"]."' style='color:white;text-decoration:none;'>ELIMINAR</a></button></td>";
        
                echo "</tr>";
        
            }
            echo "</table>";
        }

        else if($_POST["tipoconsulta"]=="MATRICULA")
        {
        
            include "../Modelo/Construct.php";
        
            $Matt = new Proceso();
        
            $Mod = $Matt -> ConsultarMatricula($_POST);
        
            include "../Vista/MAT2.php";
        
            echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">';
        
            
            echo "<table class='table table-striped'><tr>
            <th>ACTIVO</th><th>NUMERO DE MATRICULA</th><th>LUGAR DE MATRICULA</th>
            <th>FECHA DE MATRICULA</th><th>ESTUDIANTE</th>
            <th>PERSONAL GESTION MATRICULA</th><th>MODIFICAR</th><th>ELIMINAR</th><tr>";
            foreach ($Mod as $fruto)
            {
                echo "<tr>";
                
                foreach ($fruto as $savia)
                {
                    echo "<td>".$savia."</td>";
                }
        
                echo "<td><button type='button' class='btn btn-success'><a href='../Vista/CambioMatricula.php?dato1=".$fruto["Numero_Matricula"]."&dato2=".$fruto["Lugar_De_Matricula"]."&dato3=".$fruto["Fecha_De_Matricula"]."' style='color:white;text-decoration:none;'>MODIFICAR</a></button></td>";
                echo "<td><button type='button' class='btn btn-danger'><a href='../Controlador/ElimMatri.php?Elim1=".$fruto["Numero_Matricula"]."' style='color:white;text-decoration:none;'>ELIMINAR</a></button></td>";
        
                echo "</tr>";
        
            }
            echo "</table>";
        
        }

        else if($_POST["tipoconsulta"]=="ASIGNACIONES")
{

    include "../Modelo/Construct.php";

    $fuit = new Proceso();

    $curso = $fuit -> ConsultarAsignacion($_POST);

    include "../Vista/MAT2.php";

    echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">';

    
    echo "<table class='table table-striped'><tr>
    <th>ACTIVO</th><th>NUMERO DE MATRICULA</th><th>CURSO</th>
    <th>MODIFICAR</th><th>ELIMINAR</th><tr>";
    foreach ($curso as $agora)
    {
        echo "<tr>";
        
        foreach ($agora as $sempre)
        {
            echo "<td>".$sempre."</td>";
        }

        echo "<td><button type='button' class='btn btn-success'><a href='../Vista/CambioAsignar.php?dato1=".$agora["Num_Matricula"]."&dato2=".$agora["NOMBRE"]."' style='color:white;text-decoration:none;'>MODIFICAR</a></button></td>";
        echo "<td><button type='button' class='btn btn-danger'><a href='../Controlador/ElimAsigna.php?Elim1=".$agora["Num_Matricula"]."' style='color:white;text-decoration:none;'>ELIMINAR</a></button></td>";

        echo "</tr>";

    }
    echo "</table>";

}

else
{

    include "../Modelo/Construct.php";

    $santos = new Proceso();

    $gremio = $santos -> ConsultarCurso($_POST);

    include "../Vista/MAT2.php";

    echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">';

    
    echo "<table class='table table-striped'><tr>
    <th>CURSO</th><th>UBICACION</th><th>CANTIDAD ESTUDIANTES</th><th>MODIFICAR</th><tr>";
    foreach ($gremio as $palmeiras)
    {
        echo "<tr>";
        
        foreach ($palmeiras as $corinthians)
        {
            echo "<td>".$corinthians."</td>";
        }

        echo "<td><button type='button' class='btn btn-success'><a href='../Vista/CambioCurso.php?dato1=".$palmeiras["Nombre"]."&dato2=".$palmeiras["Cantidad_Estudiantes"]."&dato3=".$palmeiras["Ubicacion"]."' style='color:white;text-decoration:none;'>MODIFICAR</a></button></td>";

        echo "</tr>";

    }
    echo "</table>";

}

?>