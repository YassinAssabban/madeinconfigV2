<div class="row">

    <?php

            $proco = $bdd->prepare("SELECT * FROM produits WHERE category = ?");
            $proco->execute(array($_POST['choiceMenu']));


    while ($row = $proco->fetch()) {
    ?>

        <div class="column">
            <img src="<?= $row['imgsource']; ?>">
            <div class="card">
                <h2><?= $row['marques_pro']; ?></h2>
                <p class="textSizeDesc"><?= $row['description']; ?></p>
                <h2><?= $row['prix_pro']; ?>€</h2><br>


                <?php
                if (isset($_SESSION['userName'])) {
                ?>
                    <form method="POST" action="<?php $_SERVER['PHP_SELF']; ?>">
                        <input type="hidden" name="num_pro" value="<?= $row['num_pro']; ?>">
                        <p><button type="submit" class="btnbasket" name="addProduct">Ajouter au panier</button></p>
                        <input type="number" value="1" name="quantite" min="1" max="999" size="3">
                    </form>
                <?php
                } else {
                ?>
                    <form method="POST" action="connect.php">
                        <p><button type="submit" class="btnbasket" name="addProduct">Ajouter au panier</button></p>
                        <input type="number" value="1" name="quantite" min="1" max="999" size="3">
                    </form>
                <?php
                }
                ?>

            </div>
        </div>
    <?php
    }
    ?>

</div>