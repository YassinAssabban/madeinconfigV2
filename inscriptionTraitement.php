<?php
    require_once 'config.php';

    // test de contrôle afin de vérifier que tous les champs ont bien été remplit
    if(isset($_POST['pseudo']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['password_retype']))
    {

        $pseudo = $_POST['pseudo'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $password_retype = $_POST['password_retype'];

        // Préparation et éxecution de la requête qui permet de récupérer le contenu de la table CLIENTS la ou l'email du client correspond a l'email entrée dans le formulaire
        $check = $bdd->prepare('SELECT pseudo, email, password FROM clients WHERE email = ?');
        $check->execute(array($email));

        // $data contient tous le contenu récupérer dans la requête du dessus
        $data = $check->fetch();
        $row = $check->rowCount();


        // vérification si le client existe déja
        if($row == 0)
        {
            // controle de la taille du pseudo
            if(strlen($pseudo) <= 50)
            {
                // controle de la taille de l'email
                if(strlen($email) <= 50)
                {
                    // contrôle de la validité de l'email
                    if(filter_var($email, FILTER_VALIDATE_EMAIL))
                    {
                        // controle des deux mots de passe entre eux
                        if ($password == $password_retype)
                        {
                            //cryptage du mot de passe 
                            $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

                            // Préparation et éxecution de la requête qui permet de INSERER le contenu entrer dans le formulaire dans la table CLIENTS.
                            $insert = $bdd->prepare('INSERT INTO clients(pseudo, email, password) VALUES(:pseudo, :email, :password)');
                            $insert->execute(array(

                                'pseudo' => $pseudo,
                                'email' => $email,
                                'password' => $password,

                            ));
                            header('Location:signUp.php?reg_err=success');

                        }else header('Location: signUp.php?reg_err=password');
                    }else header('Location: signUp.php?reg_err=email');
                }else header('Location: signUp.php?reg_err=email_length');
            }else header('Location: signUp.php?reg_err=pseudo_length');
        }else header('Location: signUp.php?reg_err=already');
    }
    ?>
<!-- https://www.youtube.com/watch?v=jEgzxXCB9-w&t=538s&ab_channel=NoS1gnal-->