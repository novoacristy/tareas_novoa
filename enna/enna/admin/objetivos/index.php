<?php
include_once ("../../core/variables.php");
$titulo_pagina = "OBJETIVOS";
	
$objetivos = mysql_query("SELECT * FROM objetivos");
while($fila = mysql_fetch_array($objetivos)){
	$mision = $fila['mision'];
	$vision = $fila['vision'];
	$objetivo = $fila['objetivo'];
}
?>
<!doctype html>
<html>
<head>
	<?php include_once ("../head.php"); ?>
</head>
<body>
	<!-- CABEZA DE LA PÁGINA-->
	<header>
		<?php include_once ("../cabeza.php"); ?>
	</header>
    
	<!-- MENU GENERAL-->
	<?php include_once ("../menu.php"); ?>
	<div id="objetivos">
		<table>
			<tr>
				<th>MISION</th>
			</tr>
			<tr>
				<td><?php echo $mision ?></td>
			</tr>
			<tr>
				<th>VISION</th>
			</tr>
			<tr>
				<td><?php echo $vision ?></td>
			</tr>
			<tr>
				<th>OBJETIVO</th>
			</tr>
			<tr>
				<td><?php echo $objetivo ?></td>
			</tr>
			<tr>
				<th>OPCIONES</th>
			</tr>
			<tr>
				<td class="link"><a href="editar.php">Editar</a> | <a href="obj_ver.php">Ver</a></td>
			</tr>
		</table>
	</div>
</body>