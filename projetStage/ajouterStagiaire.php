<?php

require('includephp.php');

$nom = $_POST["nom"];
$prenom = $_POST["prenom"];
$groupe = $_POST["groupe"];

if (!empty($nom) && !empty($prenom) && !empty($groupe)) {

  $req = $bdd->prepare('INSERT INTO stagiaire(nom, prenom, groupe) VALUES(:nom, :prenom, :groupe)');

  $req->execute(array(
  	'nom' => $nom,
  	'prenom' => $prenom,
  	'groupe' => $groupe
  	));

  echo "Le stagiaire a été ajouté avec succès !";
}

else {
   echo "Les champs ne sont pas correctement remplis";
 }

?>

<meta http-equiv="refresh" content="2;URL=creationStagiaire.php">
