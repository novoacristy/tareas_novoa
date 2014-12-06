<?php 
	include_once ("../../core/variables.php");
	
	$nota = $_POST['nota_txt'];
	$id = $_POST['id_txt'];
	
	//Probando que pasen las variables
	//echo $mision;
	//echo $vision;
	//echo $id
	mysql_query("UPDATE contacto SET nota='$nota' WHERE id='$id'");

	header('Location:index.php');
?>