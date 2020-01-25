<?php
session_start();
require('includephp.php');
 ?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Evaluation</title>
  <link rel="stylesheet" href="css\style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
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
    	<a class="active" href="evaluation.php" class="menu">Evaluation</a>
    	<a href="rechercherEvaluation.php">Rechercher une évaluation</a>
  		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
    	<a href="creationStagiaire.php">Créer un stagiaire</a>
  	</ul>
  </div>
  </div>
  </div>

  <center>
  <div class="sousmenu">
  <nav class="navbarbis navbar-inverse">
      <div class="collapse navbar-collapse" id="main-menu">
        <ul class="navbis navbar-nav">

          <li class="dropdown">
            <a data-toggle="dropdown" href="#">Evaluation préalable<b class="caret"></b></a>
            <ul class="dropdown-menu jqueryFadeIn">
              <li><a href="evalPrealable/EP_domaine1.php">Domaine 1</a></li>
              <li><a href="evalPrealable/EP_domaine2.php">Domaine 2</a></li>
              <li><a href="evalPrealable/EP_domaine3.php">Domaine 3</a></li>
              <li><a href="evalPrealable/EP_domaine4.php">Domaine 4</a></li>
              <li><a href="evalPrealable/EP_domaine5.php">Domaine 5</a></li>
              <li><a href="evalPrealable/EP_domaine6.php">Domaine 6</a></li>
              <li><a href="evalPrealable/EP_domaine7.php">Domaine 7</a></li>
            </ul>
          </li>

          <li class="dropdown">
            <a data-toggle="dropdown" href="#">Evaluation intermédiaire<b class="caret"></b></a>
            <ul class="dropdown-menu jqueryFadeIn">
              <li><a href="#">Domaine 1</a></li>
              <li><a href="#">Domaine 2</a></li>
              <li><a href="#">Domaine 3</a></li>
              <li><a href="#">Domaine 4</a></li>
              <li><a href="#">Domaine 5</a></li>
              <li><a href="#">Domaine 6</a></li>
              <li><a href="#">Domaine 7</a></li>
            </ul>
          </li>
      </div>
    </nav>
  </div>
</center>

</body>

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script>
$(function() {
  // Affichage du sous menu en douceur
  jQuery('ul.navbis li.dropdown').hover(function() {
    jQuery(this).find('.jqueryFadeIn').stop(true, true).delay(200).fadeIn();
  }, function() {
    jQuery(this).find('.jqueryFadeIn').stop(true, true).delay(200).fadeOut();
  });

});
</script>

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
      	<a class="active" href="evaluation.php" class="menu">Evaluation</a>
      	<a href="rechercherEvaluation.php">Rechercher une évaluation</a>
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
