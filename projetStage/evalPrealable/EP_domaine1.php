<?php
session_start();
require('../includephp.php');
 ?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Evaluation</title>
  <link rel="stylesheet" href="..\css\style.css">
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
    	<a href="../accueil.php">Accueil</a>
    	<a class="active" href="../evaluation.php" class="menu">Evaluation</a>
    	<a href="../rechercherEvaluation.php">Rechercher une évaluation</a>
  		<a href="https://calendar.google.com/calendar/r?tab=wc1" target="_blank">Consulter l'agenda</a>
    	<a href="../creationStagiaire.php">Créer un stagiaire</a>
  	</ul>
  </div>
  </div>
  </div>

<?php
$valeurs = $bdd->query("SELECT idCompetence, libelleSousDomaine, libelleCompetence, libelleActivite FROM sousdomaine, competence, activite, domaine WHERE competence.IdSousDomaine = sousdomaine.idSousDomaine and competence.idActivite = activite.idActivite and domaine.idDomaine = sousdomaine.idDomaine and numeroDomaine = '1'")->fetchAll();
$stagiaires = $bdd->query("SELECT idStagiaire, prenom, nom from stagiaire ORDER BY nom ASC")->fetchAll();
?>

<center>
<form method="post" action="cible.php">

<!--<label>Stagiaire</label>
<select name="stagiaire">
    <?php foreach($stagiaires as $stagiaire): ?>
    <option><?php echo $stagiaire['prenom'] . " " . $stagiaire['nom'] ?></option>
    <?php endforeach ?>
</select>-->

<p> Veuillez entrer le prénom du stagiaire : </p>
<input type="text" name="prenom" />

<p> Veuillez entrer le nom du stagiaire : </p>
<input type="text" name="nom" />

<div class="tableau">
<table cellspacing="0" cellpadding="0" class="table">
  <thead>
    <tr>
      <th class="tabsousdomaine">Sous domaine</th>
      <th class="tabEP">EP</th>
      <th class="tabEI"></th>
      <th class="tabcomp">Compétences non acquises</th>
      <th class="tabactivite">Activités préconisées / ressources</th>
    </tr>
  <thead>

  <tbody>
      <?php foreach($valeurs as $valeur): ?>
        <?php if ($valeur['libelleSousDomaine'] == "1 - 1"): {?>
        <tr>
          <td><?php echo $valeur['libelleSousDomaine'] ?></td>
          <td><input type="checkbox" name="competence" value="<?php echo $valeur['idCompetence']?>"></td>
          <td></td>
          <td><?php echo $valeur['libelleCompetence'] ?></td>
          <td><?php echo $valeur['libelleActivite'] ?></td>
          <?php } endif; ?>
        <?php endforeach ?>
        </tr>
    </tbody>
      <td class="totalHeure" colspan="3">Total heures : <span>20</span></td>
</table>

<center>
<table cellspacing="0" cellpadding="0" class="table">
  <thead>
    <tr>
      <th class="tabsousdomaine">Sous domaine</th>
      <th class="tabEP">EP</th>
      <th class="tabEI"></th>
      <th class="tabcomp">Compétences non acquises</th>
      <th class="tabactivite">Activités préconisées / ressources</th>
    </tr>
  <thead>

  <tbody>
        <tr>
          <?php foreach($valeurs as $valeur): ?>
            <?php if ($valeur['libelleSousDomaine'] == "1 - 2"): {?>
          <td><?php echo $valeur['libelleSousDomaine'] ?></td>
          <td><input type="checkbox" name="competence" value="<?php echo $valeur['idCompetence']?>"></td>
          <td></td>
          <td><?php echo $valeur['libelleCompetence'] ?></td>
          <td><?php echo $valeur['libelleActivite'] ?></td>
        </tr>
  <?php } endif; ?>
<?php endforeach ?>
</tbody>
<tbody>
  <td class="totalHeure" colspan="3">Total heures : <span>27</span></td>
</tbody>
</table>
</center>

<center>
<table cellspacing="0" cellpadding="0" class="table">
  <thead>
    <tr>
      <th class="tabsousdomaine">Sous domaine</th>
      <th class="tabEP">EP</th>
      <th class="tabEI"></th>
      <th class="tabcomp">Compétences non acquises</th>
      <th class="tabactivite">Activités préconisées / ressources</th>
    </tr>
  <thead>

  <tbody>
      <?php foreach($valeurs as $valeur): ?>
        <?php if ($valeur['libelleSousDomaine'] == "1 - 3"): {?>
        <tr>
          <td><?php echo $valeur['libelleSousDomaine'] ?></td>
          <td><input type="checkbox" name="competence" value="<?php echo $valeur['idCompetence']?>"></td>
          <td></td>
          <td><?php echo $valeur['libelleCompetence'] ?></td>
          <td><?php echo $valeur['libelleActivite'] ?></td>
        </tr>
  <?php } endif; ?>
<?php endforeach ?>
</tbody>
  <td class="totalHeure" colspan="3">Total heures :<span>20</span></td>
</table>
</center>

<center>
<table cellspacing="0" cellpadding="0" class="table">
  <thead>
    <tr>
      <th class="tabsousdomaine">Sous domaine</th>
      <th class="tabEP">EP</th>
      <th class="tabEI"</th>
      <th class="tabcomp">Compétences non acquises</th>
      <th class="tabactivite">Activités préconisées / ressources</th>
    </tr>
  <thead>

  <tbody>
      <?php foreach($valeurs as $valeur): ?>
        <?php if ($valeur['libelleSousDomaine'] == "1 - 4"): {?>
        <tr>
          <td><?php echo $valeur['libelleSousDomaine'] ?></td>
          <td><input type="checkbox" name="competence" value="<?php echo $valeur['idCompetence']?>"></td>
          <td></td>
          <td><?php echo $valeur['libelleCompetence'] ?></td>
          <td><?php echo $valeur['libelleActivite'] ?></td>
        </tr>
  <?php } endif; ?>
<?php endforeach ?>
</tbody>
  <td class="totalHeure" colspan="3">Total heures : <span>36</span></td>
</table>
</center>

<center>
<table cellspacing="0" cellpadding="0" class="table">
  <thead>
    <tr>
      <th class="tabsousdomaine">Sous domaine</th>
      <th class="tabEP">EP</th>
      <th class="tabEI"></th>
      <th class="tabcomp">Compétences non acquises</th>
      <th class="tabactivite">Activités préconisées / ressources</th>
    </tr>
  <thead>

  <tbody>
      <?php foreach($valeurs as $valeur): ?>
        <?php if ($valeur['libelleSousDomaine'] == "1 - 5"): {?>
        <tr>
          <td><?php echo $valeur['libelleSousDomaine'] ?></td>
          <td><input type="checkbox" name="competence" value="<?php echo $valeur['idCompetence']?>"></td>
          <td></td>
          <td><?php echo $valeur['libelleCompetence'] ?></td>
          <td><?php echo $valeur['libelleActivite'] ?></td>
        </tr>
  <?php } endif; ?>
<?php endforeach ?>
</tbody>
<td class="totalHeure" colspan="3">Total heures : <span>18</span></td>
</table>
</div>
<input type="submit" value="Valider" />
</form>
</center>

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
