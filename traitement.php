<?php
        try
        {
            $bdd = new PDO('mysql:host=localhost;dbname=chatopen;charset=utf8', 'olivier', 'aaa', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        }
        catch (Exception $e)
        {
                die('Erreur : ' . $e->getMessage());
        }

$prenom = $_POST['pseudo'];
$contenuMessage = $_POST['message'];

$req = $bdd->prepare('INSERT INTO infochat(username,contenu) VALUES(:username, :contenu)');

$req->execute(array(
    'username' => $prenom,
    'contenu'  => $contenuMessage,
));

header('Location: index.php');
        ?>