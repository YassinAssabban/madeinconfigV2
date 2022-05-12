<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" type="image/png" href="monitor.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"> -->
</head>
<?php  session_start(); ?>
<header>
    <div class="lisere">
        <a href="index.php"><img src="logo/logo2.png" class="logolis"></a>
    </div>
</header>
<body>
<br><BR>
<div class="alert alert-succes" style="text-align: center; font-size: 24px;">
  <center> Merci <strong><?php $sess = $_SESSION['userName']; echo $sess; ?></strong> !</center>
  Votre commande à été passée avec <strong>Succès</strong>  !
</div>
<br><BR>
<center><img src="img/panneau.png"></center>

        <div class="pousse-footer"></div>

            <footer>
                    <p>Copyright © Made In Config. Inc.</p>
                    <p>Créé par Yassin Assabban dans le cadre d'études d'IG à la l'HELHa.</p>
                    <p>Attention toutes les informations de ce site web sont fausses rien n'est à vendre ici.</p>
                    <p>Toute reproduction même partielle de ce site web ou de son contenu est strictement interdite.</p>
            </footer>

</body>
</html>