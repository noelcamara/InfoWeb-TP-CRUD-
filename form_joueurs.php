<?php
include "html5_head.php";
?>
<a href='vuePrincipale.php'> Retour à l'accueil </a></br>
<?php

    include "Joueur.php";

	if(isset($_POST['delete']) && isset($_POST['id'])) {
        try {
            $Joueur = Joueur::initJoueur($_POST['id']);
        } catch (Exception $e) {
            echo "initialisation d'équipe ratée";
        }
        $Joueur->delete();
		echo "<p class='suppression'> Suppression réussie! </p>";
	}

	$page = 0;
	if(isset($_POST['page'])) {
		if(isset($_POST['suivant'])) {
			$page = $page+1;
		}
		if(isset($_POST['precedent'])) {
			$page = $page-1;
		}
		$page = $_POST['page'];
	}

	$allJoueur = Joueur::getAll();

	echo Joueur::tableEntete(); // méthode ligne 148

	foreach($allJoueur as $Joueur) {
		echo $Joueur;
	}

	echo Joueur::tableFooter(); // méthode ligne 152

?>

<div class='suivant'>
	<form method="post">
		<input type='hidden' name='page' value=<?php echo $page ?> />
		<input type='hidden' name='dir' value='tableJoueur' />
		<input type='submit' name='precedent' value='Precedent' />
		<input type='submit' name='suivant' value='Suivant' />
	</form>
</div>

<form method="post">
	<input type='hidden' name='dir' value='formJoueur' />
	<input type='submit' value='Ajouter Joueur' />
</form>

<?php
include "html5_footer.php";
