<?php
	include_once ('conexion.php');
	$titulo = "GET";
	$licenciaturas = mysql_query("SELECT * FROM licenciaturas");
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title> <?php echo $titulo; ?> </title>
</head>

<body>
	<?php
    	echo "Nombre:".$_GET['nombre'];
		echo "<br>";
		echo "Aprellido:".$_GET['apellido'];
    ?>
</body>
</html>
