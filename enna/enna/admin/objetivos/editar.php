<?php
include_once ("../../core/variables.php");
$titulo_pagina = "OBJETIVOS";
	
$objetivos = mysql_query("SELECT * FROM objetivos");
while($fila = mysql_fetch_array($objetivos)){
	$mision = $fila['mision'];
	$vision = $fila['vision'];
	$objetivo = $fila['objetivo'];
	$id = $fila['id'];
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
		<form action="actualiza.php" method="POST">
		<table>
			<tr>
				<th>MISION</th>
			</tr>
			<tr>
				<td>   <textarea id="mision_txt" name="mision_txt"><?php echo $mision ?></textarea>      </td>
			</tr>
			<tr>
				<th>VISION</th>
			</tr>
			<tr>
				<td><textarea  id="vision_txt" name="vision_txt"><?php echo $vision ?></textarea></td>
			</tr>
			<tr>
				<th>OBJETIVO</th>
			</tr>
			<tr>
				<td><textarea  id="objetivo_txt" name="objetivo_txt"><?php echo $objetivo ?></textarea></td>
			</tr>
			<tr>
				<th>OPCIONES</th>
			</tr>
			<tr>
				<td class="link"><a href="index.php">Volver</a> | <input type="submit" value="Guardar"></td>
			</tr>
		</table>
		<input type="hidden" value="<?php echo $id ?>" id="id_txt" name="id_txt">
		</form>
	</div>
</body>