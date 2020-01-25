<!DOCTYPE html>
<html>
<head>
	<title>validationlogin</title>
</head>
<body>

<?php

require('includephp.php');



$login = $_POST['login'];


$req = $bdd->prepare('SELECT idUtilisateur,mdp,prenom,nom,idType FROM utilisateur WHERE login = :login');

$req->execute(array(
	'login' => $login
));

$resultat = $req->fetch();

$isPasswordCorrect = password_verify($_POST['mdp'], $resultat['mdp']);



if (!$resultat)
{
	echo 'Mauvais identifiant ou mot de passe';

	?>
	  <meta http-equiv="refresh" content="0;URL=index.php">
<?php
}

else
{
	if ($isPasswordCorrect)
	{
		session_start();
		$_SESSION['id'] = $resultat['idType'];
		$_SESSION['prenom'] = $resultat['prenom'];
		$_SESSION['nom'] = $resultat['nom'];
		echo 'Vous êtes connecté';
	 ?>



      <br>
      <br>
      <br>
      <br>
      <meta http-equiv="refresh" content="0;URL=accueil.php">


	 <?php
	}
	else
	{

		?>

	  <br>
      <br>
      <br>
      <br>
      <meta http-equiv="refresh" content="0;URL=index.php">



		<?php
	}
}

?>

</body>
</html>
