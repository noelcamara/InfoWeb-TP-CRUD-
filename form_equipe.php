<?php

include "Equipe.php";

	if(isset($_POST['send'])) {
        $equipe = new MetierEquipe();
        $equipe->setNom_equipe($_POST['nom']);
        $equipe->setNb_victoire($_POST['nb_victoire']);
				$equipe->setNb_defaite($_POST['nb_defaite']);
				$equipe->setNb_points($_POST['nb_points']);

		$mess = "Equipe insérée!";
		if($_POST['id'] != -1) {
            $equipe->setId_equipe($_POST['id']);
            $equipe->setNouveau(false);
			$mess = "Equope mise à jour!";
		}
        $equipe->save();
		echo "<p class='insert'>".$mess. "</p>";
	}

	$nom = "";
	$nb_victoire = "";
	$nb_defaite = "";
	$nb_points = "";
	$id=-1;
	if(isset($_POST['id'])) {
		if($_POST['id'] != -1) {
			$equipe = MetierEquipe::initEquipeMetier($_POST['id']);

			$id = $_POST['id'];
			$nom = $equipe->getNom_equipe();
			$nb_victoire = $nb_victoire->getNb_Victoire();
			$nb_defaite = $nb_defaite->getNb_Defaite();
			$nb_points = $nb_points->getNb_¨Points();
		}
	}

?>
<?php
include "html5_head.php";
?>
<a href='vuePrincipale.php'> Retour à l'accueil </a></br>
<a href='table_equipe.php'> Retour a la liste </a>

<form method="post">
	<h1> Equipe </h1>

	<table>
		<tr>
			<td class="entete"> Nom </td>
			<td> <input type="text" name='nom' value=<?php echo "'$nom'" ?> required/> </td>
		</tr>
		<tr>
			<td class="entete"> Nb_victoire </td>
			<td>
				<input type="text" name="nb_victoire" value=<?php echo "'$nb_victoire'" ?> required/>
			</td>
		</tr>
		<tr>
			<td class="entete"> Nb_defaite </td>
			<td>
				<input type="text" name="nb_defaite" value=<?php echo "'$nb_defaite'" ?> required/>
			</td>
		</tr>
		<tr>
			<td class="entete"> Nb_points </td>
			<td>
				<input type="text" name="nb_points" value=<?php echo "'$nb_points'" ?> required/>
			</td>
		</tr>
	</table>
	<input type='hidden' name='id' value=<?php echo "'$id'" ?> />
	<input type='hidden' name='dir' value='formEquipe' />
	<input type='submit' name='send' value='Envoyer' />
	<input type='reset' value='Annuler' />
</form>
<?php
include "html5_footer.php";
?>
