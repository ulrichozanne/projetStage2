<?php
session_start();
 ?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Créer un stagiaire</title>
  <link rel="stylesheet" href="css\style.css">
  <style>
		@import url('https://fonts.googleapis.com/css?family=Oswald|Roboto&display=swap');
	</style>
</head>
<?php if($_SESSION['id'] == 2)
{
 ?>

<body class="bg">
  <div class="container">
  <div class="navbar">
  <div class="topnav2" id="global">
  	<ul class="niveau1">
      <a href="accueil.php">Accueil</a>
    	<a href="evaluation.php" class="menu">Evaluation</a>
    	<a href="rechercherEvaluation.php">Rechercher une évaluation</a>
  		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
    	<a class="active" href="creationStagiaire.php">Créer un stagiaire</a>
  	</ul>
  </div>

  <div class="container1 boxformulaire2">
      <h3>Pour créer un stagiaire, veuillez remplir le formulaire ci-dessous</h3>
      <form method="post" action="ajouterStagiaire.php">
        <!--<label for="login">Login :</label>-->
        <input class ="formUser" type="text" id="nom" name="nom" placeholder="Nom">

        <!--<label for="mdp">Mot de passe :</label>-->
        <input class ="formUser" type="text" id="prenom" name="prenom" placeholder="Prénom">

        <!--<label for="confirmMdp">Confirmer le mot de passe :</label>-->
        <input class ="formUser" type="text" id="groupe" name="groupe" placeholder="Groupe">

        <input id="bouton2" type="submit" value="Valider">
      </form>
  </div>
  </div>

</body>
</html>

<?php }
else
{?>

  <body class="bg">
    <div class="container">
    <div class="navbar">
    <div class="topnav" id="global">
    	<ul class="niveau1">
        <a href="accueil.php">Accueil</a>
      	<a href="evaluation.php" class="menu">Evaluation</a>
      	<a href="rechercherEvaluation.php">Rechercher une évaluation</a>
    		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
      	<a class="active" href="creationStagiaire.php">Créer un stagiaire</a>
    		<a href="creationUtilisateur.php">Créer un compte utilisateur</a>
    	</ul>
    </div>

    <div class="container1 boxformulaire2">
        <h3>Pour créer un stagiaire, veuillez remplir le formulaire ci-dessous</h3>
        <form method="post" action="ajouterStagiaire.php">
          <!--<label for="login">Login :</label>-->
          <input class ="formUser" type="text" id="nom" name="nom" placeholder="Nom">

          <!--<label for="mdp">Mot de passe :</label>-->
          <input class ="formUser" type="text" id="prenom" name="prenom" placeholder="Prénom">

          <!--<label for="confirmMdp">Confirmer le mot de passe :</label>-->
          <input class ="formUser" type="text" id="groupe" name="groupe" placeholder="Groupe">

          <input id="bouton2" type="submit" value="Valider">
        </form>
    </div>
    </div>

  </body>
  </html>

  <?php
  }
  ?>
