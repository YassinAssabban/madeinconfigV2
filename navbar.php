<header>
    <div class="lisere">
        <a href="index.php"><img src="logo/logo2.png" class="logolis"></a>
        <?php
        if (empty($_SESSION['userID'])) {
            echo "<a href=\"panier.php\" class=\"panier\"><img src=\"logo/basket.png\" width=\"40px\" height=\"40px\"></a>";
        } else { 
            $requeteTotalArticle = $bdd->prepare("SELECT count(*) FROM panier WHERE id_cli = ?");
            $requeteTotalArticle->execute(array($_SESSION['userID']));
            $totalArticle = $requeteTotalArticle->fetch();

            $totArt = $totalArticle[0];
            ?>
            <a href="panier.php" class="panier"><img src="logo/basket.png" width="40px" height="40px"><span class="badge"><?php echo $totArt; ?></span></a>
        <?php }

        ?>

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
                            <a href="memoire.php">Mémoire</a>
                            <a href="cg.php">Carte Graphique</a>
                            <a href="boitierpc.php">Boitier</a>
                        </div>
                        <div class="column-nav">
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
            if (empty($_SESSION['userName'])) {
                echo "
                                                <div class=\"connect\"><a href=\"signUp.php\">Sign Up</a></div>
                                                <div class=\"connect\"><a href=\"connect.php\">Sign In</a></div> ";
            } else {
                $sess = $_SESSION['userName'];
                echo "<div class=\"connect\"><a href=\"profil.php\">Bonjour ";
                echo "$sess";
                echo " !</a></div> <div class=\"connect\"><a href=\"deconnexion.php\">Deconnexion</a></div>";
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