<?php

require('includephp.php');

$login = $_POST["login"];
$mdp = $_POST["mdp"];
$confirmMdp = $_POST["confirmMdp"];
$prenom = $_POST["prenom"];
$nom = $_POST["nom"];

$passhash = password_hash($mdp, PASSWORD_DEFAULT);

if (!empty($login) && !empty($mdp) && !empty($confirmMdp) && !empty($confirmMdp) && !empty($nom) && !empty($prenom) && $mdp == $confirmMdp) {
      $req = $bdd->prepare('INSERT INTO utilisateur(login, mdp, idType, prenom, nom ) VALUES(:login, :mdp, 2, :prenom, :nom)');
      $req->execute(array(
      	'login' => $login,
      	'mdp' => $passhash,
      	'prenom' => $prenom,
        'nom' => $nom
      	));
      echo "L'utilisateur a été crée avec succès !";
  }
  elseif ($mdp != $confirmMdp) {
    echo "Les mdp sont différents";
  }
  elseif (empty($login) || empty($mdp) || empty($confirmMdp) || empty($prenom) || empty($nom)) {
    echo "Les champs ne sont pas correctement remplis";
  }

?>

<meta http-equiv="refresh" content="2;URL=creationUtilisateur.php">
