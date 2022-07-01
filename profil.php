<?php session_start();
require_once 'config.php'; ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <title>Votre Profil</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" type="image/png" href="logo/monitor.png">
    <meta name="keywords" content="HTML, CSS, JavaScript, computer, cartegraphique, cartemère, processeur, intel, amd, msi, asus, nzxt, boitier, watercooling, vantirad, vantilateur, bequiet, alimentation, corsair, kitevo, mémoire, hyperx, kingston, samsung, ventaliteur, seagate, westerndigital, screen, ecran, 24, 28, clavier, souris, keyboard, mouse, macbook, iphone, apple, ipad, composants, phériphériques, belgium, belgique, france, french, madeinconfig, madein, config, made ">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/969a208ffe.js" crossorigin="anonymous"></script>
</head>
<?php require_once 'navbar.php'; ?>


<body>
    <div class="box-profile">
        <div class="box-profile-top">
            <?php
            $sessPseudo = $_SESSION['userName'];
            echo '<div class="box-profile-hello">Bonjour <br>' . $_SESSION['userFirstname'] . ' ' . $_SESSION['userSurname'] . '</div>';
            echo '<div class="box-profile-iduser">N° client : ' . $_SESSION['userID'] . ' </div>';
            ?>
            <div class="box-profile-deco"><a class="box-profile-deco-link" href="deconnexion.php">ME DÉCONNECTER</a></div>
        </div>
        <div class="box-profile-bottom">
            <a class="box-profile-info" href="" id="infos">Mes informations</a>
            <a class="box-profile-cmds" href="" id="comands">Mes commandes</a>
            <a class="box-profile-adress" href="" id="adress">Mes adresses</a>
            <a class="box-profile-paniers" href="" id="panier">Mes paniers</a>
            <?php
            if ($_SESSION['role'] == 'Admin') {
                echo '<a class="box-profile-panel" href="">My Panel</a>';
            }
            ?>
        </div>
    </div>

    <div class="box-profile-right">







        <!-- <div class="box-profile-right-adress">
            <div class="profileTitle">
                <div>
                    <h2>MES ADRESSES</h2><br>
                    <p>Retrouvez ici les adresses enregistrées lors de vos précédents achats sur notre site.</p><br>
                </div>
            </div>
            <div class="box-profile-right-adress-fact">
                <div class="box-profile-right-adress-icon-fact"><i class="fa-regular fa-envelope-open"></i></div>
                <div>
                    <h2>ADRESSE DE FACTURATION</h2>
                </div>
            </div>
            <hr class="box-profile-right-adress-hr"><br>
            <div class="box-profile-right-adress-fact-content">
                <div class="box-profile-adress-name"><b>John Doe</b></div>
                <div class="box-profile-adress-adress">
                    <p>Rue Alex Terieur</p>
                    <p>6000 Charleroi</p>
                    <p><i>Belgique</i></p>
                    <p>Tel : 0477726597</p>
                </div>
                <div class="box-profile-adress-modif">
                <a href=""><i class="fa-solid fa-pen"></i></a>
                <a href=""><i class="fa-solid fa-trash-can"></i></a>
                </div>
            </div>
            <br>
            <hr class="box-profile-right-adress-hr"><br><br>
            <div class="box-profile-right-adress-livr">
                <div class="box-profile-right-adress-icon-livr"><i class="fa-solid fa-box"></i></div>
                <div>
                    <h2>ADRESSES DE LIVRAISON</h2>
                </div>
            </div>
            <hr class="box-profile-right-adress-hr"><br>
            <div class="box-profile-right-adress-livr-content">
                <div class="box-profile-adress-name"><b>John Doe</b></div>
                <div class="box-profile-adress-adress">
                    <p>Rue Alex Terieur</p>
                    <p>6000 Charleroi</p>
                    <p><i>Belgique</i></p>
                    <p>Tel : 0477726597</p>
                </div>
                <div class="box-profile-adress-modif">
                    <a href="#"><i class="fa-solid fa-pen"></i></a>
                    <a href="#"><i class="fa-solid fa-trash-can"></i></a>
                </div>
            </div>
        </div> -->







        <!-- <div class="box-profile-right-info">
            <div class="profileTitle">
                <h2>MES INFORMATIONS</h2>
            </div>
            <form method="POST" action="<?php $_SERVER['PHP_SELF']; ?>">
                    <div class="box-profile-info-left">
                        <label for="fname">Civilité :</label><br>
                        <input type="radio" name="civ_cli" value="M.">
                        <label for="html">M.</label>
                        <input type="radio" name="civ_cli" value="Mme.">
                        <label for="css">Mme.</label><br><br>
                        <label for="fname">Prénom :</label><br>
                        <input type="text" name="fname" placeholder="Entrez notre prénom" value="<?php echo $_SESSION['userFirstname']; ?>"><br>
                        <label for="lname">Nom de famille :</label><br>
                        <input type="text" name="lname" placeholder="Entrez notre nom de famille" value="<?php echo $_SESSION['userSurname']; ?>"><br>
                    </div>
                    <div class="box-profile-info-right">
                        <label for="email">Email :</label><br>
                        <input type="email" name="email" value="<?php echo $_SESSION['userEmail']; ?>"><br><br>
                        <label for="birthday">Date de naissance : </label><br>
                        <input type="date" name="birthday"><br><br>
                        <label for="fname">Pseudo :</label><br>
                        <input type="text" name="pseud" value="<?php echo $_SESSION['userName']; ?>"><br>
                    </div>
                    <div class="box-profile-info-valide">
                        <input type="submit" value="VALIDER">
                    </div>
            </form>
        </div> -->

        <div class="box-profile-panel">
            
        </div>


    </div>



</body>
<div class="pousse-footer"></div>
<footer>
    <p>Copyright © Made In Config. Inc.</p>
    <p>Créé par Yassin Assabban dans le cadre d'études d'IG à la l'HELHa.</p>
    <p>Attention toutes les informations de ce site web sont fausses rien n'est à vendre ici.</p>
    <p>Toute reproduction même partielle de ce site web ou de son contenu est strictement interdite.</p>
</footer>

</html>