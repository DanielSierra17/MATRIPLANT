<?php

include "../Vista/Menu.html";

echo '<link rel="stylesheet" type="text/css" href="../Vista/Actua.css">';

echo "<form action='../Controlador/Actualizado.php' method='POST'>";
echo "<div class='container-add'>";

echo "<h2 class='container__title'>ACTUALIZACION DE DATOS</h2>";

echo "<div class='container__form'>";

echo "<label for='1' class='container__label'>NUMERO DOCUMENTO</label>";
echo '<input type="number" class="container__input" name="txt1" value="'.$_GET["dato1"].'">';
echo "<label for='2' class='container__label'>TELEFONO</label>";
echo '<input type="tel" class="container__input" name="txt2" value="'.$_GET["dato2"].'">';
echo "<label for='3' class='container__label'>CORREO</label>";
echo '<input type="email" class="container__input" name="txt3" value="'.$_GET["dato3"].'">';
echo "<label for='4' class='container__label'>PERFIL</label>";
echo '<select class="container__input" name="txt9" id="I9" value="'.$_GET["dato4"].'">
                  <option>Personal Gestion Matricula</option>
                  <option>Estudiante</option>
                  <option>Administrador</option>
              </select>';

echo "<label for='5' class='container__label'>CIUDAD</label>";
echo '<input type="text" class="container__input" name="txt5" value="'.$_GET["dato5"].'">';
echo "<label for='6' class='container__label'>DIRECCION</label>";
echo '<input type="text" class="container__input" name="txt6" value="'.$_GET["dato6"].'">';
echo "<label for='7' class='container__label'>BARRIO</label>";
echo '<input type="text" class="container__input" name="txt7" value="'.$_GET["dato7"].'">';
echo "<label for='8' class='container__label'>ESTRATO</label>";
echo '<input type="number" class="container__input" name="txt8" min="1" max="6" value="'.$_GET["dato8"].'">';
echo "<label for='9' class='container__label'>EXPERIENCIA</label>";
echo '<input type="number" class="container__input" name="txt9" min="0" max="50" value="'.$_GET["dato9"].'">';
echo "<label for='10' class='container__label'>EPS</label>";
echo '<input type="text" class="container__input" name="txt10" value="'.$_GET["dato10"].'">';


echo "<input type='submit' value='GUARDAR CAMBIOS' class='container__submit'>";

echo "</div>";
echo "</div>";

echo "</form>";

?>