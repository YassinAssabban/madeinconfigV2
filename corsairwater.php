<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Watercooling Corsair</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="icon" type="image/png" href="logo/monitor.png" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
	<header>
		<div class="lisere">
			<a href="index.php"><img src="logo/logo2.png" class="logolis"></a>
			<a href="panier.php" class="panier"><img src="logo/basket.png" width="40px" height="40px"></a>
		</div>
		<nav>
					<div class="navbar">
								  <a href="index.php">Accueil</a>
								  <a href="news.php">News</a>
						<div class="dropdown">
								    <button class="dropbtn">Composants
								      <i class="fa fa-caret-down"></i>
								    </button>
							<div class="dropdown-content">
								    <div class="header">
								        <h2>Composants</h2>
								    </div>   
								<div class="row-nav">
									<div class="column-nav">
								 		<h3>Composants PC</h3>
								   		<a href="proco.php">Processeur</a>
								   		<a href="cm.php">Carte mère</a>
							    		<a href="kitevo.php">Kit Evo</a>
									</div>
									<div class="column-nav">
										<h3 class="cacherpoint">.</h3>
										<a href="memoire.php">Mémoire</a>
										<a href="cg.php">Carte Graphique</a>
										<a href="boitierpc.php">Boitier</a>
									</div>
									<div class="column-nav">
										<h3 class="cacherpoint">.</h3>
									  	<a href="alim.php">Alimentation</a>
										<a href="ssd.php">SSD</a>
										<a href="disquedur.php">Disque Dur</a>
									</div>
									<div class="column-nav">
										<h3>Refroidissement PC</h3>
									  	<a href="ventil.php">Ventilateur PC</a>
										<a href="ventir.php">Ventirad PC</a>
										<a href="water.php">Watercooling</a>
									</div>
								</div>
							</div>
						</div> 
						<div class="dropdown">
								    <button class="dropbtn">Produits
								      <i class="fa fa-caret-down"></i>
								    </button>
							<div class="dropdown-content">
								    <div class="header">
								        <h2>Produits</h2>
								    </div>   
								<div class="row-nav">
									<div class="column-nav">
								   		<h3>Périphériques</h3>
								   		<a href="screen.php">Ecran PC</a>
               							<a href="clavier.php">Clavier</a>
               							<a href="mouse.php">Souris</a>
									</div>
									<div class="column-nav">
										<h3>Apple</h3>
										<a href="macbook.php">Macbook</a>
              							<a href="ipad.php">Ipad</a>
              							<a href="iphone.php">Iphone</a>
									</div>
									<div class="column-nav">
									</div>
									<div class="column-nav">
									</div>
								</div>
							</div>
						</div>
						<?php
									session_start();

									if(empty($_SESSION['userName'])) {
										echo "
										<div class=\"connect\"><a href=\"signUp.php\">Sign Up</a></div>
										<div class=\"connect\"><a href=\"connect.php\">Sign In</a></div> ";
									} else {
										$sess = $_SESSION['userName'];
										echo "<div class=\"connect\"><a href=\"#\">Bonjour ";
										echo "$sess";
										echo "!</a></div> <div class=\"connect\"><a href=\"deconnexion.php\">Deconnexion</a></div>";
									}

								?>

								<div class="search-container">
							    	<form action="/action_page.php">
							      		<input type="text" placeholder="Search.." name="search">
							     	 	<button type="submit"><i class="fa fa-search"></i></button>
							    	</form>
							  </div>
					</div>
		</nav>
	</header>
					<div class="row">
						  <div class="column">
						   	<img src="img/refroid/H75.png">
						    <div class="card">
						      <h3>Corsair Hydro Series H75 V2</h3>
						      <p>Le refroidisseur H75 v2 Hydro Series est un refroidisseur liquide pour processeur tout en un hautes performances équipé d'un radiateur de 120 mm. Le radiateur de 120 mm et les 2 ventilateurs SP120 PWM assurent l'excellente dissipation thermique dont vos processeurs ont besoin.</p>
						      <h1 class="price">109€<sup class="cent">95</sup></h1><br>
						      <input type="button" class="btnbasket" name="#" value="        AJOUTER AU PANIER  ">						    </div>
						  </div>

						  <div class="column">
						   	<img src="img/refroid/H100I.png">
						    <div class="card">
						      <h3>Corsair Hydro Series H100x</h3>
						      <p>Le H1100x Hydro Series est un refroidisseur liquide de processeur, complet et très performant qui fonctionne avec des fixations standard pour radiateur de 240 mm. Le radiateur de 240 mm et le double ventilateur SP120 PWM assurent l'excellente dissipation thermique.</p>
						      <h1 class="price">109€<sup class="cent">95</sup></h1><br>
						      <input type="button" class="btnbasket" name="#" value="        AJOUTER AU PANIER  ">						    </div>
						  </div>
						  
						 <div class="column">
						   	<img src="img/refroid/H80.png">
						    <div class="card">
						      <h3>Corsair Hydro Series H80i v2 Hydro Series</h3>
						      <p>Le H80i v2 Hydro Series est un refroidisseur liquide de processeur, complet et très performant qui fonctionne avec des fixations standard pour radiateur de 120 mm. Le radiateur extra-épais de 49 mm x 120 mm et le double ventilateur SP120L PWM assurent l'excellente dissipation thermique.</p>
						      <h1 class="price">129€<sup class="cent">95</sup></h1><br>
						      <input type="button" class="btnbasket" name="#" value="        AJOUTER AU PANIER  ">						    </div>
						  </div>

						   <div class="column">
						   	<img src="img/refroid/H100X.png">
						    <div class="card">
						      <h3>Corsair Hydro Series H100i PLATINUM</h3>
						      <p>Refroidissement liquide pour processeur, le H100i PLATINUM Hydro Series est un kit complet particulièrement performant pour les boîtiers équipés de fixations pour radiateur de 240 mm. Le radiateur de 240 mm et deux ventilateurs ML 120 PWM refroidiront au mieux votre processeur surcadencé.</p>
						      <h1 class="price">159€<sup class="cent">95</sup></h1><br>
						      <input type="button" class="btnbasket" name="#" value="        AJOUTER AU PANIER  ">						    </div>
						  </div>



			</div>
	<!-- 
	https://www.ldlc.com/fr-be/fiche/PB00254821.php
	https://www.ldlc.com/fr-be/fiche/PB00205425.php
	https://www.ldlc.com/fr-be/fiche/PB00247692.php
	https://www.ldlc.com/fr-be/fiche/PB00259819.php
-->	

<footer>
			        <p>Copyright © Made In Config. Inc.</p>
			        <p>Créé par Yassin Assabban dans le cadre d'études d'IG à la l'HELHa.</p>
			        <p>Attention toutes les informations de ce site web sont fausses rien n'est à vendre ici.</p>
			        <p>Toute reproduction même partielle de ce site web ou de son contenu est strictement interdite.</p>  
			</footer>
			</body>
</html>
