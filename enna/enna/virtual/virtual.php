<?php
	include_once ("../core/variables.php");
	$id = $_GET['id'];
	$virtual = mysql_query("SELECT * FROM recorrido_virtual WHERE categoriavir_id=$id");
	$virtualdos = mysql_query("SELECT * FROM recorrido_virtual2 WHERE categoriavir_id=$id");
	
	
	$titulo_pagina = $titulo;
?>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		 <?php include_once ($head); ?>
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
		 <?php include_once ($cabeza); ?>
	    <!--MENU GENERAL-->
	    <?php include_once ($menu); ?>
	<div id="galerias">	
		<div class="container">
			<div id="grid-gallery" class="grid-gallery">
				<section class="grid-wrap">
					<ul class="grid">
						<li class="grid-sizer"></li><!-- for Masonry column width -->	
				        <?php
				            while($fila = mysql_fetch_array($virtual)){
				                echo "<li>";
								echo "<figure>";
								if ($fila['img_min'] == ""){
									echo "<img src='/enna/enna/img/virtual/null.gif'/>";
								}else{
									echo "<img src='/enna/enna/img/virtual/" . $fila['img_min'] . "' />";
								}
				                echo "</figure>";
								echo "</li>";
				            }
				        ?>
					</ul>
				</section><!-- // grid-wrap -->
	
				<section class="slideshow">
					<ul>
						<?php
							while($fila2 = mysql_fetch_array($virtualdos)){
				                echo "<li>";
								echo "<figure>";
								echo "<figcaption>";
								echo "<h3>" . $fila2['titulo'] . "</h3>";
								echo "<p>" . $fila2['descripcion'] . "</p>";
								if ($fila2['img_min'] == ""){
									echo "<img src='/enna/enna/img/virtual/null.gif'/>";
								}else{
									echo "<img src='/enna/enna/img/virtual/" . $fila2['img_min'] . "' />";
								}
				                echo "</figure>";
								echo "</li>";
				            }

				        ?>

					</ul>
					<!-- botones -->
					<nav>
						<span class="icon nav-prev"></span>
						<span class="icon nav-next"></span>
						<span class="icon nav-close"></span>
					</nav>
					<div class="info-keys icon">Navigate with arrow keys</div>
				</section><!-- // slideshow -->
			</div><!-- // grid-gallery -->
		</div>
	</div>
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<script src="js/masonry.pkgd.min.js"></script>
		<script src="js/classie.js"></script>
		<script src="js/cbpGridGallery.js"></script>
		<script>
			new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
		</script>
	</body>
</html>




