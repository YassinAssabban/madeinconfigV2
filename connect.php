<?php
session_start();
require_once 'config.php';

if (isset($_POST['email']) && isset($_POST['password'])) {
	$email = $_POST['email'];
	$password = $_POST['password'];

	// Préparation et éxecution de la requête qui permet de récupérer le contenu de la table CLIENTS la ou l'email du client correspond a l'email entrée dans le formulaire de connexion
	$check = $bdd->prepare('SELECT pseudo, email, id_cli, role, nom_cli, prenom_cli, password FROM clients WHERE email = ?');
	$check->execute(array($email));

	// $data contient tous le contenu récupérer dans la requête du dessus
	$data = $check->fetch();
	$row = $check->rowCount();

	// vérification si le client existe déja
	if ($row == 1) {
		if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
			//$password = password_hash($password, PASSWORD_DEFAULT);
			if (password_verify($password, $data['password'])) {
				//if($data['password'] === $password) {

				$_SESSION['userName'] = $data['pseudo'];
				$_SESSION['userID'] = $data['id_cli'];
				$_SESSION['userEmail'] = $data['email'];
				$_SESSION['role'] = $data['role'];
				$_SESSION['userSurname'] = $data['nom_cli'];
				$_SESSION['userFirstname'] = $data['prenom_cli'];
				header('Location:index.php');
			} else {
				$messageErreur = '<div class="alert alert-danger">
					<strong>Erreur</strong> mot de passe incorrect</div>';
			}
		} else {
			$messageErreur = '<div class="alert alert-danger">
				<strong>Erreur</strong> Email incorrect</div>';
		}
	} else {
		$messageErreur = '<div class="alert alert-danger">
			<strong>Erreur</strong> compte non existant</div>';
	}
}
?>
<!DOCTYPE html>
<html>

<head>
	<title>Connexion</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="icon" type="image/png" href="img/monitor.png" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
		background: #92c581;
	}

	* {
		box-sizing: border-box;
	}

	input[type=text],
	input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
	}

	button {
		background-color: #4CAF50;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 100%;
	}

	button:hover {
		opacity: 0.8;
	}

	.cancelbtn {
		width: auto;
		padding: 10px 18px;
		background-color: #f44336;
	}

	.container {
		padding: 60px;
	}

	span.psw {
		float: right;
		padding-top: 16px;
	}

	/* Change styles for span and cancel button on extra small screens */
	@media screen and (max-width: 300px) {
		span.psw {
			display: block;
			float: none;
		}

		.cancelbtn {
			width: 100%;
		}
	}

	hr {
		margin: 8px 0;
		width: 100%;
		border: 1px solid #4CAF50;
		margin-bottom: 30px;
	}
</style>

<body>
	<header>
		<div class="lisere">
			<a href="index.php"><img src="img/logo2.png" class="logolis"></a>
		</div>
	</header>
	<?php
	if (isset($messageErreur)) {
		echo $messageErreur;
	}

	?>
	<form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
		<div class="container">
			<h1>Se connecter</h1>
			<hr>
			<label for="email"><b>Email</b></label>
			<br>
			<input type="text" placeholder="Enter Email" name="email" required>
			<br>
			<label for="psw"><b>Password</b></label>
			<br>
			<input type="password" placeholder="Enter Password" name="password" required>
			<br>
			<button type="submit">Login</button>
			<br>
			<hr>
			<label>
				<input type="checkbox" checked="checked" name="remember"> Se souvenir de moi (HS)
			</label>
		</div>
		<div class="container" style="width: 60%; padding-top: 0px;">
			<button type="button" class="cancelbtn" href="index.php">Annuler</button>
			<span class="psw"><a href="#">Mot de passe oublié? (HS)</a></span>
		</div>
	</form>
	<div class="pousse-footer"></div>
	<footer>
		<p>Copyright © Made In Config. Inc.</p>
		<p>Créé par Yassin Assabban dans le cadre d'études d'IG à la l'HELHa.</p>
		<p>Attention toutes les informations de ce site web sont fausses rien n'est à vendre ici.</p>
		<p>Toute reproduction même partielle de ce site web ou de son contenu est strictement interdite.</p>
	</footer>
</body>

</html>
<!-- inspiré par ceci https://www.youtube.com/watch?v=jEgzxXCB9-w&t=538s&ab_channel=NoS1gnal-->