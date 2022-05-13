<?php session_start();
require_once 'config.php';


$proco = $bdd->query("SELECT * FROM produits WHERE category = ");

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