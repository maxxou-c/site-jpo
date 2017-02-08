<?php 
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=tablemougo;charset=utf8', 'root', '');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
		echo $_POST['etablissement'];
		echo '<br/>';
		echo $_POST['sectionp'];
		echo '<br/>';
		echo $_POST['codepostal'];
		echo '<br/>';
		echo $_POST['sectionv'];
		echo '<br/>';
		echo $_POST['connaissances'];
		echo '<br/>';
		echo $_POST['nom'];
		echo '<br/>';
		echo $_POST['prenom'];
		echo '<br/>';
		echo $_POST['adresse'];
		echo '<br/>';
		echo $_POST['diplome'];
		
?>
