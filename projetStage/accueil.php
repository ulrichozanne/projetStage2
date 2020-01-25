<?php
session_start();
require('includephp.php');
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Accueil</title>
	<link rel="stylesheet" type="text/css" href="css\style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<style>
		@import url('https://fonts.googleapis.com/css?family=Oswald|Roboto&display=swap');
	</style>
</head>

<?php if($_SESSION['id'] == 2)
{
 ?>

<body class="bg" id="global">

<div class="background">
		    <nav>
		       <p class="container">Bonjour <?php echo $_SESSION['prenom'] . ' ' . $_SESSION['nom'];?>, que voulez-vous faire ?</p>
					 <img id="logoGreta"
					     src="img/logoGreta.png"
					     alt="logo du Greta"
					     height="50px"
					     width="150px"
					 />
		   </nav>
</div>

<div class="container">
<div class="topnav2 accueil" id="global">
	<ul>
  	<a class="active" href="accueil.php">Accueil</a>
  	<a href="evaluation.php" class="menu">Evaluation</a>
  	<a href="rechercherEvaluation.php">Rechercher une évaluation</a>
		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
  	<a href="creationStagiaire.php">Créer un stagiaire</a>
	</ul>
</div>
</div>
<div class="container">
<footer>
<a href="deconnexionphp.php" class="afooter">Se déconnecter</a>
</footer>
</div>
</body>
</html>
<?php }
else
{?>
  <body class="bg" id="global">

  <div class="background">
  		    <nav>
  		       <p class="container">Bonjour <?php echo $_SESSION['prenom'] . ' ' . $_SESSION['nom'];?>, que voulez-vous faire ?</p>
  					 <img id="logoGreta"
  					     src="img/logoGreta.png"
  					     alt="logo du Greta"
  					     height="50px"
  					     width="150px"
  					 />
  		   </nav>
  </div>

<div class="container">
  <div class="topnav accueil" id="global">
  	<ul class="niveau1">
    	<a class="active" href="accueil.php">Accueil</a>
    	<a href="evaluation.php" class="menu">Evaluation</a>
    	<a href="rechercherEvaluation.php">Rechercher une évaluation</a>
  		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
    	<a href="creationStagiaire.php">Créer un stagiaire</a>
      <a href="creationUtilisateur.php">Créer un compte utilisateur</a>
  	</ul>
  </div>
</div>

<footer>
<a href="deconnexionphp.php" class="afooter">Se déconnecter</a>
</footer>
</div>
</body>
</html>
<?php
}
?>
