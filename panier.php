<?php
// Initialisation des données de sessions
session_start();
// Vérifie si l'utilisateur est connecté (Y = On affiche la page du panier | N = On affiche la page pour se connecter)
if (!isset($_SESSION['userName']))
    header("Location:connect.php");

require_once 'config.php';

?>
<!DOCTYPE html>
<html>

<head>
    <title>Checkout Final</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" type="image/png" href="img/monitor.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<header>
    <div class="lisere">
        <a href="index.php"><img src="img/logo2.png" class="logolis"></a>
    </div>
</header>

<body>
    <table>
        <tr>
            <td colspan="3">
                <h2>Panier d'achat de <?php $sess = $_SESSION['userName'];
                                        echo $sess; ?></h2>
            </td>
        </tr>
        <tr>
            <th></th>
            <th>Produits</th>
            <th>Quantités</th>
            <th>Prix Unitaire</th>
            <th>Prix Total</th>
        </tr>
        <?php
        // Préparation et éxecution de la requête qui permet de récupérer le contenu de la table PANIER la ou l'id client correspond au client connecté actuellement
        $toPanier = $bdd->prepare("SELECT * FROM panier WHERE id_cli = ?");
        $toPanier->execute(array($_SESSION['userID']));

        // Préparation et éxecution de la requête qui permet de récupérer le contenu de la table CLIENTS la ou l'id client correspond au client connecté actuellement
        $verifClient = $bdd->prepare("SELECT * FROM clients WHERE id_cli = ?");
        $verifClient->execute(array($_SESSION['userID']));
        $clientInfo = $verifClient->fetch();

        // Préparation et éxecution de la requête qui permet de supprimer le contenu de la table PANIER la ou l'id panier correspond a l'id_panier renvoyé par le formulaire dans $_POST['deleteItem']
        if (isset($_POST['deleteItem'])) {
            $supp = $bdd->prepare("DELETE FROM panier WHERE id_panier = ?");
            $supp->execute(array($_POST['deleteItem']));
            header('Location:panier.php');
        }


        // ? REQUIRE COMMENTS ? //
        if (isset($_POST['quantite']) && isset($_POST['idPanierForQte'])) {
            $newQtePanier = $_POST['quantite'];
            $idPanierForNewQte = $_POST['idPanierForQte'];
            $upQte = $bdd->prepare("UPDATE panier SET qte_pro = $newQtePanier WHERE id_panier = ? AND id_cli = ?");
            $upQte->execute(array($idPanierForNewQte, $_SESSION['userID']));
            header('Location:panier.php');
        }


        $totalFormat = 0;
        $total = 0;


        // On récupère dans le tableau $row chaque ligne lié a la requête toPanier
        while ($row = $toPanier->fetch()) {

            // Préparation et éxecution de la requête qui permet de récupérer le contenu de la table produits la ou le num_pro correspond au numéro de produit de la ligne du tableau $row
            $recProduits = $bdd->prepare("SELECT * FROM produits WHERE num_pro = ?");
            $recProduits->execute(array($row['num_pro']));
            $infoProduits = $recProduits->fetch();

            // calcul du prix total pour chaque article si il a été prix plusieurs fois
            $prixTotalParProduit = $infoProduits['prix_pro'] * $row['qte_pro'];
            $prixTotalParProduitFormat = number_format($prixTotalParProduit, 2);

            // calcul du prix total du panier 
            $total = $total + $prixTotalParProduit;
            $totalFormat = number_format($total, 2);


        ?>
            <tr>
                <form method="POST" action="panier.php">
                    <td><button class="btnSuppProd" type="submit" name="deleteItem" value="<?php echo $row['id_panier']; ?>"><i class="fa fa-close"></i></button></td>
                </form>
                <td><?= $infoProduits['marques_pro']; ?></td>
                <!-- <td><form method="POST" action="panier.php">
                <input type="number" value="<?php echo $row['qte_pro'] ?>" name="quantite" min="1" max="999" size="2" class="btnQte">
                </form></td> -->
                <td>
                    <form method="POST" action="<?php $_SERVER['PHP_SELF']; ?>">
                        <input type="number" value="<?= $row['qte_pro']; ?>" name="quantite" min="1" max="999" size="3">
                        <input type="hidden" name="idPanierForQte" value="<?php echo $row['id_panier']; ?>">
                    </form>
                </td>
                <td><?= $infoProduits['prix_pro']; ?>€</td>
                <td><?= $prixTotalParProduitFormat; ?>€</td>
            </tr>
        <?php
        }
        ?>
        <tr>
            <td colspan="4" class="borderGreenTop">
                <h3>Total :</h3>
            </td>
            <td class="borderGreenTop"><span class="price" style="color:black"><b><?= $totalFormat ?>€</b></span></td>
        </tr>
    </table>


</body>
<a href="checkout.php"><input type="submit" value="Continuer" class="btnPanier" name="boutonContinuer"></a>

<div class="pousse-footer"></div>
<footer>
    <p>Copyright © Made In Config. Inc.</p>
    <p>Créé par Yassin Assabban dans le cadre d'études d'IG à la l'HELHa.</p>
    <p>Attention toutes les informations de ce site web sont fausses rien n'est à vendre ici.</p>
    <p>Toute reproduction même partielle de ce site web ou de son contenu est strictement interdite.</p>

</footer>
</body>

</html>