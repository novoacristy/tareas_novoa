<?php
include_once ("../../core/variables.php");
$titulo_pagina = "CONTACTO";
	
$contacto = mysql_query("SELECT * FROM contacto");
while($fila = mysql_fetch_array($contacto)){
	$nota = $fila['nota'];
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
	<div id="contacto">
		<form action="actualiza.php" method="POST">
		<table>
			<tr>
				<th>NOTA</th>
			</tr>
			<tr>
				<td>   <textarea id="nota_txt" name="nota_txt"><?php echo $nota ?></textarea>      </td>
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