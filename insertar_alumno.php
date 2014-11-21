<?php 
	include_once('conexion.php');
	
	$n = $_POST['nombre'];
	$ap = $_POST['apellido_paterno'];
	$am = $_POST['apellido_materno'];
	$e = $_POST['edad'];
	$c = $_POST['cuenta'];
	$t = $_POST['telefono'];
	$d = $_POST['direccion'];
	
	mysql_query("INSERT INTO alumnos (nombre,apellido_paterno,apellido_materno,edad,cuenta,telefono,direccion)
		VALUES ('$n','$ap','$am','$e','$c','$t','$d')");
		
	header('Location:alumnos.php');
?>