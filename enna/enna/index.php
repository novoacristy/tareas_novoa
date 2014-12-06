
<!--ENNA-->

<?php
	include_once ("core/variables.php");
	$titulo_pagina = "INICIO";
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
    
    <div id="inicio">
    	<div id="slider">
            <img src="img/inicio/img1.jpg"/>
            <img src="img/inicio/img2.jpg"/>
            <img src="img/inicio/img3.jpg"/>
    	</div>
    </div>

</body>
</html>