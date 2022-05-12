<?php
    session_start();
    require_once 'config.php';

    if (isset($_POST['email']) && isset($_POST['password']))
    {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $check = $bdd->prepare('SELECT pseudo, email, id_cli, password FROM clients WHERE email = ?');
        $check->execute(array($email));
        $data = $check->fetch();
        $row = $check->rowCount();

        if ($row == 1) {
            if(filter_var($email, FILTER_VALIDATE_EMAIL))
            {
                //$password = password_hash($password, PASSWORD_DEFAULT);
                if(password_verify($password, $data['password'])){
                //if($data['password'] === $password) {

                    $_SESSION['userName'] = $data['pseudo'];
                    $_SESSION['userID'] = $data['id_cli'];  
                    header('Location:landing.php');

                }else header('Location:connect.php?login_err=password');
            }else header('Location:connect.php?login_err=email');
        }else header('Location:connect.php?login_err=already');
    }
?>