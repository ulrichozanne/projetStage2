<?php
session_start();
require('includephp.php');
 ?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Rechercher une évaluation</title>
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
    	<a class="active" href="rechercherEvaluation.php">Rechercher une évaluation</a>
  		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
    	<a href="creationStagiaire.php">Créer un stagiaire</a>
  	</ul>
  </div>
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
      	<a class="active" href="rechercherEvaluation.php">Rechercher une évaluation</a>
    		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
      	<a href="creationStagiaire.php">Créer un stagiaire</a>
    		<a href="creationUtilisateur.php">Créer un compte utilisateur</a>
    	</ul>
    </div>
    </div>
    </div>

  </body>
  </html>

  <?php
  }
  ?>
