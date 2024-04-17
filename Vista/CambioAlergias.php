<?php

include "../Vista/Menu.html";

echo '<link rel="stylesheet" type="text/css" href="../Vista/Actua.css">';

echo "<form action='../Controlador/Modificar.php' method='POST'>";
echo "<div class='container-add'>";

echo "<h2 class='container__title'>ACTUALIZACION DE DATOS</h2>";

echo "<div class='container__form'>";

echo "<label for='1' class='container__label'>NUMERO DOCUMENTO</label>";
echo '<input type="number" class="container__input" name="txt1" value="'.$_GET["dato1"].'">';
echo "<label for='2' class='container__label'>ALERGIAS</label>";
echo '<input type="text" class="container__input" name="txt2" value="'.$_GET["dato2"].'">';

echo "<input type='submit' value='GUARDAR CAMBIOS' class='container__submit'>";

echo "</div>";
echo "</div>";

echo "</form>";

?>