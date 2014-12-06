<?php
	include_once ("../../core/variables.php");
	$titulo_pagina = "CONTACTO";

	//header('location:obj_ver.php');
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
<!-- OBJETIVOS -->
<div id="objetivos">
    <table>
		<tr>
			<th>NOTA</th>
			<th>OPCIONES</th>
		</tr>
        <?php
            while($fila = mysql_fetch_array($contacto)){
				echo "<tr>";
				echo "<form class='guardar.php' name='form1' method='post' action='guardar.php'>";
				echo "<td>";
				echo "<textarea name='nuevo' rows='6' cols='80' class='txt'>" . $fila['nota'] . "</textarea>";
				echo "</td>";
				echo "</form>";
				echo "<td><input type='submit' value='actualizar'/></td>";
				echo "</tr>";
			}
		?>
	</table>
</div>
</body>