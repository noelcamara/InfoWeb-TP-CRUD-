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
	  default:
			include 'vuePrincipale.php';
		break;
}
	include 'html5_footer.php';
?>