<?php
include "html5_head.php";
?>
<a href='vuePrincipale.php'> Retour à l'accueil </a></br>
<?php

    include "Equipe.php";

	if(isset($_POST['delete']) && isset($_POST['id'])) {
        try {
            $equipe = Equipe::initEquipe($_POST['id']);
        } catch (Exception $e) {
            echo "initialisation d'équipe ratée";
        }
        $equipe->delete();
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

	$allEquipe = Equipe::getAll();

	echo Equipe::tableEntete(); // méthode ligne 148

	foreach($allEquipe as $equipe) {
		echo $equipe;
	}

	echo Equipe::tableFooter(); // méthode ligne 152

?>

<div class='suivant'>
	<form method="post">
		<input type='hidden' name='page' value=<?php echo $page ?> />
		<input type='hidden' name='dir' value='tableEquipe' />
		<input type='submit' name='precedent' value='Precedent' />
		<input type='submit' name='suivant' value='Suivant' />
	</form>
</div>

<form method="post">
	<input type='hidden' name='dir' value='formEquipe' />
	<input type='submit' value='Ajouter Equipe' />
</form>

<?php
include "html5_footer.php";
?>
