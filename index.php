<?php
	include 'config.php';
	include 'html5_head.php';

	$dir = "";
	if(isset($_REQUEST['dir'])) {
		$dir=$_REQUEST['dir'];
	}

	switch ($dir) {
	  case "formEquipe":
			include 'form_equipe.php';
		break;
	  case "tableEquipe":
			include 'table_equipe.php';
		break;
		case "formJoueur":
			include 'form_joueur.php';
		break;
	  case "tableJoueur":
			include 'table_joueur.php';
		break;
		case "formMatchs":
			include 'form_matchs.php';
		break;
	  case "tableMatchs":
			include 'table_matchs.php';
		break;
	  default:
			include 'vuePrincipale.php';
		break;
}
	include 'html5_footer.php';
?>
