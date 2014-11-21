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
        	    
		<?php 
			echo "La variable pasada por GET es: " . $_GET['id'] . "<br>";
			echo "La variable pasada por POST es: " . $_POST['id'] . "<br>";
		?>
         
    </body>
</html>