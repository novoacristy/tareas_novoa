<?php
	include_once ("../../core/variables.php");
	$titulo_pagina = "BUSCADOR";
?>
<!doctype html>
<html>
<head>
    <?php include_once ("../head.php"); ?>
</head>

<body>
    <!--CABEZA DE LA PÁGINA-->
	<header>
        <?php include_once ("../cabeza.php"); ?>
    </header>
    
    <!--MENU GENERAL-->
    <?php include_once ("../menu.php"); ?>
<!-- OBJETIVOS -->
<div id="objetivos"> 
	<div class="wrap" id="buscador"> 
        <title>BUSQUEDA</title>
        <p>DE ESTILO | EDIFICIOS | FÁBRICAS | HACIENDA MEXICANA | MEXICANO MODRNO CONTEMPORÁNEO | MODERNO CONTEMPORÁNEO | OFICINAS | TEMPLOS DE CULTO RELIGIOSO | USO PÚBLICO</p>
        <p>
        <form name="form1" method="post" action="index.php" id="cdr">
        <h4>Buscar Proyecto</h4>
        <input name="busca" type="text" id="busqueda">
        
        <input type="submit" name="submit" value="Buscar">
		<br>
		<p>SUBIR IMAGEN A UN PROYECTO:</p>
		<a class="crear_btn" href='eliminar_img.php?id=".$muestra['id']."'>CREAR IMAGEN</a>
        </p>
        </form>
        
        <?php
			$busca="";
			$busca=$_POST['busca'];
			mysql_connect('localhost','root','root');
			mysql_select_db('enna',$conexion);
			if($busca!=""){
				$busqueda=mysql_query("SELECT * FROM proyectos WHERE titulo LIKE '%".$busca."%'");
			}
		?>
        <div class="scroll">
            <table width="960" border="1">
				<tr>
				</tr>
                <tr>
                    <th>TITULO</th>
                    <th>IMAGEN</th>
					<th>EDITAR</th>
                    <th>ELIMINAR</th>
                </tr>
            <?php
                while($muestra=mysql_fetch_array($busqueda)){
                    echo "<tr>";
                    echo "<td>".$muestra['titulo']."</td>";
                    echo "<td><img class='img_tab_min' src='../../img/proyectos/" . $fila['img_min']. "' /></td>";
                    echo "<td>"."<a href='editar.php'>"."EDITAR"."</a>"."</td>";
					echo "<td>"."<a href='eliminar_img.php?id=".$muestra['id']."'>ELIMINAR</a></td>";
                }
            ?>
            </table>
        </div>
    </div>
</div>
</body>