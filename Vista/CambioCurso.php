<?php

include "../Vista/Menu.html";

echo '<link rel="stylesheet" type="text/css" href="../Vista/Actua.css">';

echo "<form action='../Controlador/Combinar.php' method='POST'>";
echo "<div class='container-add'>";

echo "<h2 class='container__title'>ACTUALIZACION DE DATOS</h2>";

echo "<div class='container__form'>";

echo "<label for='1' class='container__label'>CURSO</label>";
echo '<input type="number" class="container__input" name="txt1" value="'.$_GET["dato1"].'">';
echo "<label for='2' class='container__label'>CANTIDAD ESTUDIANTES</label>";
echo '<input type="number" class="container__input" name="txt2" value="'.$_GET["dato2"].'">';
echo "<label for='3' class='container__label'>UBICACION</label>";
echo '<select class="container__input" name="txt3" value="'.$_GET["dato3"].'">
                  <option>Sede Administrativa</option>
                  <option>Sede Bachillerato</option>
                  <option>Sede Preescolar</option>
                  <option>Sede Bilingüe</option>
                  <option>Sede Soacha</option>
                  <option>Sede Norte</option>
                  <option>Sede Chia</option>
              </select>';

echo "<input type='submit' value='GUARDAR CAMBIOS' class='container__submit'>";

echo "</div>";
echo "</div>";

echo "</form>";

?>