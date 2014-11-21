<?php 
	include_once('conexion.php');	
	$URL_id = $_GET['id'];
	mysql_query("DELETE FROM alumnos WHERE id = $URL_id");		
	header('Location:alumnos.php');
?>