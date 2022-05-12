<?php
    require_once 'config.php';

    if(isset($_POST['pseudo']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['password_retype']))
    {
        $pseudo = $_POST['pseudo'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $password_retype = $_POST['password_retype'];

        $check = $bdd->prepare('SELECT pseudo, email, password FROM clients WHERE email = ?');
        $check->execute(array($email));
        $data = $check->fetch();
        $row = $check->rowCount();

        if($row == 0)
        {
            if(strlen($pseudo) <= 50)
            {
                if(strlen($email) <= 50)
                {
                    if(filter_var($email, FILTER_VALIDATE_EMAIL))
                    {
                        if ($password == $password_retype)
                        {
                            $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

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