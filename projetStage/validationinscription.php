<!DOCTYPE html>
<html>
<head>
	<title>Inscription compte superadmin</title>
	<meta charset="utf-8">
</head>

<body>

<?php

require('includephp.php');

$login = $_POST['login'];
$prenom = $_POST['prenom'];
$nom = $_POST['nom'];
$idtype = $_POST['idtype'];
$mdp = $_POST['mdp'];

echo $login;
echo $prenom;
echo $nom;
echo $idtype;

$passhash = password_hash($mdp,PASSWORD_DEFAULT);

$req = $bdd->prepare('INSERT INTO utilisateur(login,mdp,idType,prenom,nom) VALUES(:login,:mdp,:idtype,:prenom,:nom)');

$req->execute(array(
    'login' => $login,
    'mdp' => $passhash,
    'idtype' => $idtype,
    'prenom' => $prenom,
    'nom' => $nom
));

?>

<meta http-equiv="refresh" content="0;URL=index.php">
</body>
</html>
