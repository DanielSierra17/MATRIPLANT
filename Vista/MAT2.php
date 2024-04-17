<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sistema Gestion Matriplant</title>
	<link rel="shortcut icon" href="https://celestinfreinet.edu.co/wp-content/uploads/2020/10/Icono.png"> 
	<link rel="stylesheet" href="../Vista/MOD2.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".hamburger").click(function(){
			  $(".wrapper").toggleClass("active")
			})
		});
	</script>
</head>
<body>

<div class="wrapper">

	<div class="top_navbar">
		<div class="logo">
            <img id="LogoCF" src="https://celestinfreinet.edu.co/wp-content/uploads/2020/12/Logo-Celestin-Freinet.png" >
		</div>
		<div class="top_menu">
			<div class="home_link">
				<a href="../Vista/Matriplant.php">
					<span class="icon"><i class="fas fa-dice-d6"></i></span>
					<span>INICIO</span>
				</a>
			</div>
            <h1>SISTEMA MATRIPLANT</h1>
			<div class="right_info">
				<div class="icon_wrap">
					<div class="icon">
						<i class="fas fa-user"></i>
					</div>
				</div>
				<div class="icon_wrap">
					<div class="icon">
						<a class="link" href="../Controlador/Destroy.php">
						<i class="fas fa-power-off"></i>
					</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
            <div class="item_wrap">
        
                <?php
include "Consultas.html";
?>
</div>
</div>
    </div>
</body>
</html>