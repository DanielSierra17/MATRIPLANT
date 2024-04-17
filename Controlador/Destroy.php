<?php

session_start();

unset($_SESSION['dato']);

session_destroy();

header("Location:../Vista/Inicio.html");

?>