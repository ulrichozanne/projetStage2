<?php
session_start();
 ?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Créer un utilisateur</title>
  <link rel="stylesheet" href="css\style.css">
  <style>
		@import url('https://fonts.googleapis.com/css?family=Oswald|Roboto&display=swap');
	</style>
</head>
<body class="bg">
  <div class="container">
  <div class="navbar">
  <div class="topnav" id="global">
  	<ul class="niveau1">
      <a href="accueil.php">Accueil</a>
      <a href="evaluation.php" class="menu">Evaluation</a>
      <a href="rechercherEvaluation.php">Rechercher une évaluation</a>
      <a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
      <a href="creationStagiaire.php">Créer un stagiaire</a>
      <a class="active" href="creationUtilisateur.php">Créer un compte utilisateur</a>
  	</ul>
  </div>
  </div>
  </div>

<div class="container1 boxformulaire">
    <h3>Pour créer un utilisateur, veuillez remplir le formulaire ci-dessous</h3>
    <form method="post" action="ajouterUtilisateur.php">
      <!--<label for="login">Login :</label>-->
      <input class ="formUser" type="text" id="login" name="login" placeholder="Login">

      <!--<label for="mdp">Mot de passe :</label>-->
      <input class ="formUser" type="password" id="mdp" name="mdp" placeholder="Mot de passe">

      <!--<label for="confirmMdp">Confirmer le mot de passe :</label>-->
      <input class ="formUser" type="password" id="confirmMdp" name="confirmMdp" placeholder="Confirmer le mot de passe">

      <!--<label for="nom">Nom :</label>-->
      <input class="formUser" type="text" id="nom" name="nom" placeholder="Nom">

      <!--<label for="prenom">Prénom :</label>-->
      <input class="formUser" type="text" id="prenom" name="prenom" placeholder="Prénom">

      <input id="bouton" type="submit" value="Valider">
    </form>
</div>

</body>
</html>
