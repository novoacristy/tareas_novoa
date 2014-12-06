<?php
	include_once ("../../core/variables.php");
	$titulo_pagina = "CONTACTO";
	
	$contacto = mysql_query("SELECT * FROM contacto");
	while($fila = mysql_fetch_array($contacto)){
		$nota = $fila['nota'];
	}
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
<!-- CONTACTO -->
<div id="contacto">
	<table>
		<tr>
			<th>NOTA</th>
		</tr>
		<tr>
			<td><?php echo $nota ?></td>
		</tr>
		<tr>
			<th>OPCIONES</th>
		</tr>
		<tr>
			<td class="link"><a href="editar.php">Editar</a></td>
		</tr>
	</table>
</div>
</body>