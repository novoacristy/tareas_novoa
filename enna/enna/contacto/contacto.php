<?php
	include_once ("../core/variables.php");
	$titulo_pagina = "CONTACTO";
	
	$contacto = mysql_query("SELECT * FROM contacto");
	while($fila = mysql_fetch_array($contacto)){
		$nota = $fila['nota'];
	}
?>
<!doctype html>
<html>
<head>
    <?php include_once ($head); ?>
</head>

<body>
	
    <!--CABEZA DE LA PÁGINA-->
	<header>
        <?php include_once ($cabeza); ?>
    </header>
    
    <!--MENU GENERAL-->
    <?php include_once ($menu); ?>
<!-- CONTACTO -->
    <div id="contacto"><!--abre contacto-->
    	<table class="formulario">
        	<tr>
        		<td>
                	<div>
                         <!--Formulario para mandar mail-->  
                                          <?php
                                (!isset($_POST['email']))
                                ?>
                                    <form action="" method="post">
                                    <label>
                                    <input type="text" name="nombre" class="campo" id="nombre" placeholder="Nombre">
                                    </label><br>
                                    <!--<label>
                                          <input type="text" name="telefono" class="campo" placeholder="Teléfono">
                                    </label><br>-->
                                    <label>
                                           <input type="text" name="email" class="campo" placeholder="Email">
                                    </label><br>
                                    <label>
                                         <textarea name="mensaje" rows="5" cols="57" class="campo2"></textarea>
                                    </label>
                                    <input type="submit" value="Enviar" class="campo3"/>
                                  </form>
                                <?php
                                
                                  $mensaje.= "\nNombre: ". $_POST['nombre'];
                                  $mensaje.= "\nEmail: ".$_POST['email'];
                                  $mensaje.= "\nMensaje: \n".$_POST['mensaje'];
                                  $destino= "enovoaarq@yahoo.com.mx";
                                  $remitente = $_POST['email'];
                                  $asunto = "Mensaje enviado por: ".$_POST['nombre'];
                                  mail($destino,$asunto,$mensaje,"FROM: $remitente");
                                ?>
            		</div>
                </td>
                <td>
                	<div class="nota">
                		<?php echo $nota ?>
                	</div>	
            	</td>
        	</tr>
        </table>    
    </div><!--cierre contacto-->
    
</body>