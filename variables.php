<?php
	$titulo = "GET Y POST";
?>
<!DOCTYPE>
<html>
	<head>
    	<meta charset="UTF-8">
        <title><?php echo $titulo; ?></title>
    </head>
    
    <body>
    	<h1><?php echo $titulo; ?></h1>
        
        <?php include_once('menu.php');?>
        
        <h3>PASAR VARIABLE POR GET</h3>
        
        <a href="resultados.php?id=1">Variable por GET</a> 
        
        <form action="resultados.php" method="POST">
        	<label for="id">id</label>
            <input type="text" name="id" value="" id="id">
            <p><input type="submit" value="continuar"></p> 
        </form>
             
    </body>
</html>