<?php session_start();
require_once 'config.php';


$proco = $bdd->query("SELECT * FROM produits WHERE category = 27");

$sql = $bdd->query("SELECT * FROM produits ORDER BY num_pro ");




if (isset($_POST['addProduct'])) {
	$verifExist = $bdd->prepare("SELECT * FROM panier WHERE id_cli = ? AND num_pro = ?");
	$verifExist->execute(array($_SESSION['userID'], $_POST['num_pro']));
	$verifProduits = $verifExist->fetch();
	$rowPanier = $verifExist->rowCount();
	if ($rowPanier == 0) {
		if (isset($_POST['num_pro'])) {
			$ajout = $bdd->prepare("INSERT INTO panier(id_cli,num_pro, qte_pro) VALUES(?, ?, ?)");
			$ajout->execute(array($_SESSION['userID'], $_POST['num_pro'], $_POST['quantite']));
			//print $bdd->lastInsertId();
		}
	} else {
		$newQte = $verifProduits['qte_pro'] += $_POST['quantite'];
		$addQte = $bdd->prepare("UPDATE panier SET qte_pro = $newQte WHERE id_cli = ? AND num_pro = ?");
		$addQte->execute(array($_SESSION['userID'], $_POST['num_pro']));
	}
}

?>
<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Ipad's</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="icon" type="image/png" href="logo/monitor.png" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<?php require_once 'navbar.php'; ?>
<body>
<?php require_once 'affichageArticles.php'; ?>
<!--
https://www.ldlc.com/fr-be/fiche/PB00267968.php
https://www.ldlc.com/fr-be/fiche/PB00371644.php
https://www.ldlc.com/fr-be/fiche/PB00323948.php
https://www.ldlc.com/fr-be/fiche/PB00260407.php
-->
<footer>
			        <p>Copyright © Made In Config. Inc.</p>
			        <p>Créé par Yassin Assabban dans le cadre d'études d'IG à la l'HELHa.</p>
			        <p>Attention toutes les informations de ce site web sont fausses rien n'est à vendre ici.</p>
			        <p>Toute reproduction même partielle de ce site web ou de son contenu est strictement interdite.</p>  
			</footer>
			</body>
</html>