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
<div id="objetivos">
    <table>
		<tr>
			<th>MISION</th>
			<th colspan="2">OPCIONES</th>
		</tr>
        <?php
            while($fila = mysql_fetch_array($mision)){
				echo "<tr>";
				echo "<td>". $fila['mision'] ."</td>";
				echo "<td class='boton'><a href='editar.php?id=". $fila['id']."'>EDITAR</a></td>";
				//echo "<td class='boton'><a href='eliminar.php?id=". $fila['id']."'>ELIMINAR</a></td>";
				echo "<td class='boton'><a href='obj_ver.php'>VER</a></td>";
				echo "</tr>";
			}
		?>
        
		<tr>
			<th>VISION</th>
			<th colspan="2">OPCIONES</th>
		</tr>
        <?php
            while($fila = mysql_fetch_array($vision)){
				echo "<tr>";
				echo "<td>". $fila['vision'] ."</td>";
				echo "<td class='boton'><a href='editar.php?id=". $fila['id']."'>EDITAR</a></td>";
				//echo "<td class='boton'><a href='eliminar.php?id=". $fila['id']."'>ELIMINAR</a></td>";
				echo "<td class='boton'><a href='obj_ver.php'>VER</a></td>";
				echo "</tr>";
			}
		?>

		<tr>
			<th>OBJETIVO</th>
			<th colspan="2">OPCIONES</th>
		</tr>
        <?php
            while($fila = mysql_fetch_array($objetivo)){
				echo "<tr>";
				echo "<td>". $fila['objetivo'] ."</td>";
				echo "<td class='boton'><a href='editar.php?id=". $fila['id']."'>EDITAR</a></td>";
				//echo "<td class='boton'><a href='eliminar.php?id=". $fila['id']."'>ELIMINAR</a></td>";
				echo "<td class='boton'><a href='obj_ver.php'>VER</a></td>";
				echo "</tr>";
			}
		?>
	</table>
</div>
</body>