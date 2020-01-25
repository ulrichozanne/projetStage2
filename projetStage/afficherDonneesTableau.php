<?php
require('includephp.php');

$req =$bdd->prepare('select * from utilisateur');

$bdd->execute();

$donnees = $req->fetchAll();

var_dump($donnees);

 ?>
