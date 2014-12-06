
<?php 
	include_once ("../../core/variables.php");
	
	$descripcion = $_POST['descripcion_txt'];
	$id = $_POST['id_txt'];
	
	//Probando que pasen las variables
	//echo $mision;
	//echo $vision;
	//echo $id
	mysql_query("UPDATE proyectos SET descripcion='$descripcion' WHERE id='$id'");

	header('Location:index.php');
?>