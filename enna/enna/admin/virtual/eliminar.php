<?php
include_once('../../core/conexion.php');
$URL = $_GET['id'];
mysql_query("DELETE FROM mision WHERE id=$URL");
mysql_query("DELETE FROM vision WHERE id=$URL");
mysql_query("DELETE FROM objetivo WHERE id=$URL");
header('location:index.php');
?>