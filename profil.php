<?php session_start(); require_once 'config.php'; ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <title>Votre Profile</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" type="image/png" href="logo/monitor.png">
    <meta name="keywords" content="HTML, CSS, JavaScript, computer, cartegraphique, cartemère, processeur, intel, amd, msi, asus, nzxt, boitier, watercooling, vantirad, vantilateur, bequiet, alimentation, corsair, kitevo, mémoire, hyperx, kingston, samsung, ventaliteur, seagate, westerndigital, screen, ecran, 24, 28, clavier, souris, keyboard, mouse, macbook, iphone, apple, ipad, composants, phériphériques, belgium, belgique, france, french, madeinconfig, madein, config, made ">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<?php require_once 'navbar.php'; ?>


<body>
    <div class="profile">
        <div class="profileTitle">
            <h1>Vos Informations :</h1>
        </div>
        <div class="profileEmail">
            <?php $emailSession = $_SESSION['userEmail'];
            echo " Votre email : " . $emailSession; ?>
        </div>
        <div class="profilePseudo">
            <?php $nameSession = $_SESSION['userName'];
            echo " Votre Pseudo : " . $nameSession; ?>
        </div>
    </div>
</body>
<div class="pousse-footerProfile"></div>
<footer>
    <p>Copyright © Made In Config. Inc.</p>
    <p>Créé par Yassin Assabban dans le cadre d'études d'IG à la l'HELHa.</p>
    <p>Attention toutes les informations de ce site web sont fausses rien n'est à vendre ici.</p>
    <p>Toute reproduction même partielle de ce site web ou de son contenu est strictement interdite.</p>
</footer>

</html>