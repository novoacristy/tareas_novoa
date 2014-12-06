<?php
	include_once ("../core/variables.php");
	$id = $_GET['id'];
	$recorrido_virtual = mysql_query("SELECT * FROM recorrido_virtual WHERE id=$id");
   
	$titulo_pagina = $titulo;
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
<div id="virtual">
    <div class="album">
		<!-- PHP -->      
		        <?php
		            while($fila = mysql_fetch_array($recorrido_virtual)){
		                echo "<a href='virtual.php?id=" . $fila['id'] . "'>";
						echo "<div class='proyecto'>";
						if ($fila['img_min'] == ""){
							echo "<img src='/enna/enna/img/virtual/null.gif'/>";
						}else{
							echo "<img src='/enna/enna/img/virtual/" . $fila['img_min'] . "' />";
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