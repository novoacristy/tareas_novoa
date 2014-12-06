<?php
	include_once ("../core/variables.php");
	$titulo_pagina = "RECORRIDO VIRTUAL";
	
	$categoria_virtual = mysql_query("SELECT * FROM categoria_virtual");
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
		            while($fila = mysql_fetch_array($categoria_virtual)){
		                echo "<a href='virtual.php?id=" . $fila['id'] . "'>";
						echo "<div class='proyecto'>";
						if ($fila['img'] == ""){
							echo "<img src='/enna/enna/img/categoria_virtual/null.gif'/>";
						}else{
							echo "<img src='/enna/enna/img/categoria_virtual/" . $fila['img'] . "' />";
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