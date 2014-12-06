<?php
	include_once ("../../core/variables.php");
	$titulo_pagina = "OBJETIVOS";
	
	$objetivo = mysql_query("SELECT * FROM objetivo");
	$mision = mysql_query("SELECT * FROM mision");
	$vision = mysql_query("SELECT * FROM vision");
	
	//header('location:obj_ver.php');
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
<!------------------------------------------------OBJETIVOS------------------------------------------------------->
<div id="objetivos">
    <table>
		<tr>
			<th>MISION</th>
			<th>OPCIONES</th>
		</tr>
        <?php
            while($fila = mysql_fetch_array($mision)){
				echo "<tr>";
				echo "<form class='form' name='form1' method='post' action='guardar.php'>";
				echo "<td>";
				echo "<textarea name='txt_mision' rows='6' cols='80' class='txt'>" . $fila['mision'] . "</textarea>";
				echo "</td>";
				echo "</form>";
				echo "<td><a href='guardar.php?id=". $fila['id']."'>GUARDAR</a></td>";
				echo "</tr>";
			}
		?>
		<tr>
			<th>VISION</th>
			<th>OPCIONES</th>
		</tr>
        <tr>
        	<form class="form" name="form2" method="post2" action="guardar.php">
        		<td>
                	<textarea name="txt_vision" rows="6" cols="80" class="txt"><?php while($fila = mysql_fetch_array($vision)){
					echo  $fila['vision'];
					}?>
                    </textarea> 
            	</td>
                <td>
                	<input type="submit" name="button2" class="btn_guardar" value="GUARDAR"/>
                </td>
                
            </form>
        </tr>
		<tr>
			<th>OBJETIVO</th>
			<th>OPCIONES</th>
		</tr>
        <tr>
        	<form class="form" name="form3" method="post3" action="guardar.php">
        		<td>
                	<textarea name="txt_objetivo" rows="6" cols="80" class="txt"><?php while($fila = mysql_fetch_array($objetivo)){
					echo  $fila['objetivo'];
					}?>
                    </textarea> 
            	</td>
                <td>
                	<input type="submit" name="button" class="btn_guardar" value="GUARDAR"/>
                </td>
                
            </form>
        </tr>
        
	</table>
</div>
</body>