<?php 
	include_once ("../../core/variables.php");
	
	$mision = $_POST['mision_txt'];
	$vision = $_POST['vision_txt'];
	$objetivo = $_POST['objetivo_txt'];
	$id = $_POST['id_txt'];
	
	//Probando que pasen las variables
	//echo $mision;
	//echo $vision;
	//echo $id
	mysql_query("UPDATE objetivos SET mision='$mision', vision='$vision', objetivo='$objetivo' WHERE id='$id'");

	header('Location:index.php');
?>