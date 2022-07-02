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
        <form action="article.php" method="POST">
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
                                <button name="choiceMenu" value="1" class="menubtn">Processeur</button>
                                <button name="choiceMenu" value="2" class="menubtn">Carte mère</button>
                                <button name="choiceMenu" value="3" class="menubtn">Kit Evo</button>

                            </div>
                            <div class="column-nav">
                                <button name="choiceMenu" value="4" class="menubtn">Mémoire</button>
                                <button name="choiceMenu" value="5" class="menubtn">Carte Graphique</button>
                                <button name="choiceMenu" value="6" class="menubtn">Boitier</button>
                            </div>
                            <div class="column-nav">
                                <button name="choiceMenu" value="7" class="menubtn">Alimentation</button>
                                <button name="choiceMenu" value="8" class="menubtn">SSD</button>
                                <button name="choiceMenu" value="9" class="menubtn">Disque dur</button>
                            </div>
                            <div class="column-nav">
                                <h3>Refroidissement PC</h3>
                                <button name="choiceMenu" value="10" class="menubtn">Ventilateur PC</button>
                                <button name="choiceMenu" value="11" class="menubtn">Ventirad PC</button>
                                <button name="choiceMenu" value="12" class="menubtn">Watercooling</button>
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
                                <button name="choiceMenu" value="13" class="menubtn">Ecran PC</button>
                                <button name="choiceMenu" value="14" class="menubtn">Clavier</button>
                                <button name="choiceMenu" value="15" class="menubtn">Souris</button>
                            </div>
                            <div class="column-nav">
                                <h3>Apple</h3>
                                <button name="choiceMenu" value="16" class="menubtn">Macbook</button>
                                <button name="choiceMenu" value="17" class="menubtn">Ipad</button>
                                <button name="choiceMenu" value="18" class="menubtn">Iphone</button>
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
                    echo "<div class=\"connect\"><a href=\"profil.php\">Mon compte";
                    echo "</a></div> <div class=\"connect\"><a href=\"deconnexion.php\">Deconnexion</a></div>";
                }

                ?>
                <div class="search-container">
                    <form action="/action_page.php">
                        <input type="text" placeholder="Search.." name="search">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
        </form>
    </nav>
</header>