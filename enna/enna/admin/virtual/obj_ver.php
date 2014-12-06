<?php
	include_once ("../../core/variables.php");
	$titulo_pagina = "OBJETIVOS";
	
	$objetivo = mysql_query("SELECT * FROM objetivo");
	$mision = mysql_query("SELECT * FROM mision");
	$vision = mysql_query("SELECT * FROM vision");
?>
<!doctype html>
<html>
<head>
    <?php include_once ("../head.php"); ?>
</head>

<body>
    <!--CABEZA DE LA PÁGINA-->
	<header>
        <?php include_once ("../cabeza.php"); ?>
    </header>
    
    <!--MENU GENERAL-->
    <?php include_once ("../menu.php"); ?>
    
<!------------------------------------------------OBJETIVOS------------------------------------------------------->
    <!-- PHP -->            
    <div id="objetivos">
    	<div class="container demo-3">
			<ul class="grid cs-style-4">
				<li>
					<figure>
						<div><img src="../img/objetivos/mision.png" alt="img05"></div>
						<figcaption>
							<h3>MISIÓN</h3>
							<?php
								while($fila = mysql_fetch_array($mision)){
									echo "<p>" . $fila['mision'] ."</p>";
								}
							?>
						</figcaption>
					</figure>
				</li>
                <li>
					<figure>
						<div><img src="../img/objetivos/vision.png" alt="img05"></div>
						<figcaption>
							<h3>VISIÓN</h3>
							<?php
								while($fila = mysql_fetch_array($vision)){
									echo "<p>" . $fila['vision'] ."</p>";
								}
							?>
						</figcaption>
					</figure>
				</li>
                <li>
					<figure>
						<div><img src="../img/objetivos/objetivos.png" alt="img05"></div>
						<figcaption>
							<h3>OBJETIVO</h3>
							<?php
								while($fila = mysql_fetch_array($objetivo)){
									echo "<p>" . $fila['objetivo'] ."</p>";
								}
							?>
						</figcaption>
					</figure>
				</li>
			</ul>
		</div>
		<script src="js/toucheffects.js"></script>
</body>