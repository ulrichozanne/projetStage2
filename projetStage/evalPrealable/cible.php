<?php

require('../includephp.php');

$prenom;
$nom;

$req = "INSERT INTO evaluation (libelleEval, idStagiaire) SELECT 'EP', idStagiaire FROM stagiaire where nom = '".$_POST['nom']."' and prenom = '".$_POST['prenom']."')";
$result = $bdd->query($req);

$prenom = $_POST['prenom'];
$nom = $_POST['nom'];

if (isset($_POST['competence']))
{
    echo "La case n° " . $_POST['competence'] . " est cochée"; 
}

else
{
    echo 'Vous n\'avez pas coché la case.';
}

?>
