<?php
	include_once ("../core/variables.php");
	$titulo_pagina = "PROYECTOS";
	
	$categorias = mysql_query("SELECT * FROM categorias");
?>
<!doctype html>
<html>
<head>
    <?php include_once ($head); ?>
</head>

<body>
	
    <!--CABEZA DE LA PÁGINA-->
	<header>
        <?php include_once ($cabeza); ?>
    </header>
    
    <!--MENU GENERAL-->
    <?php include_once ($menu); ?>
<!-- PROYECTOS -->
<div id="galerias">
    <div class="album">
		<!-- PHP -->      
		        <?php
		            while($fila = mysql_fetch_array($categorias)){
		                echo "<a href='proyecto.php?id=" . $fila['id'] . "'>";
						echo "<div class='proyecto'>";
						if ($fila['img'] == ""){
							echo "<img src='/enna/enna/img/categorias/null.gif'/>";
						}else{
							echo "<img src='/enna/enna/img/categorias/" . $fila['img'] . "' />";
						}
		                echo "<div class='datoproyecto nombreproyecto'>" . $fila['titulo'] . "</div>";
		                echo "</div>";
						echo "</a>";
		            }
		        ?>
		<!-- PHP --> 
		     <div class="clear" ></div>
    </div>
</div>

</body>