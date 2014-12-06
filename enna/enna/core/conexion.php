<?php 
	//Conexión a la base de datos
	$conexion = mysql_connect('localhost','root','root');
	
	if (!$conexion){
		die('No se pudo conectar:' . mysql_error());	
	}
	
	$bd = mysql_select_db('db555846954',$conexion);
	mysql_set_charset('utf8', $enlace);	
	mysql_query("SET NAMES 'utf8'");	
?>