<?php
include_once('../../core/conexion.php');
$URL = $_GET['id'];
mysql_query("UPDATE mision SET id=1 WHERE id=$URL");
mysql_query("UPDATE vision SET id=1 WHERE id=$URL");
mysql_query("UPDATE objetivo SET id=1 WHERE id=$URL");
header('location:index.php');
?>