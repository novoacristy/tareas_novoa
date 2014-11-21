<?php
	$titulo = "Crear Alumno";
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
        
        <form action="insertar_alumno.php" method="POST">
        	<label for="id">Nombre</label><br>
            <input type="text" name="nombre" value="" id="nombre"><br>
            <br>
            <label for="id">Apellido Paterno</label><br>
            <input type="text" name="apellido_paterno" value="" id="apellido_paterno"><br>
            <br>
            <label for="id">Apellido Materno</label><br>
            <input type="text" name="apellido_materno" value="" id="apellido_materno"><br>
            <br>
            <label for="id">Edad</label><br>
            <input type="text" name="edad" value="" id="edad"><br>
            <br>
            <label for="id">Cuenta</label><br>
            <input type="text" name="cuenta" value="" id="cuenta"><br>
            <br>
            <label for="id">Teléfono</label><br>
            <input type="text" name="telefono" value="" id="telefono"><br>
            <br>
            <label for="id">Dirección</label><br>
            <input type="text" name="direccion" value="" id="direccion"><br>
            <br>
            <p><input type="submit" value="continuar"></p>
        </form>
             
    </body>
</html>