<?php
include "html5_head.php";
include "Equipe.php";
?>
<a href='vuePrincipale.php'> Retour à l'accueil </a></br>
<?php

include "Joueur.php";

if(isset($_POST['delete']) && isset($_POST['id'])) {
    try {
        $joueur = joueur::initJoueur($_POST['id']);
    } catch (Exception $e) {
        echo "initialisation d'équipe ratée";
    }
    $joueur->delete();
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

$allJoueurs = Joueur::getAll();

echo Joueur::tableEntete(); // méthode ligne 148

$equipeid=0;
$it=0;
$ch ='<h1>Présentation des joueurs</h1>';


/* Version proposée le 26/02/2020 par Thomas : */
foreach($allJoueurs as $joueur) {
    if($equipeid!=$joueur->getIdEquipe()){
        if($equipeid!=0) {
            $ch.= "</table>";
            try {
                $equipe = Equipe::initEquipe($equipeid);
            } catch (Exception $e) {
                echo"no equipe found with this id";
            }
            $nom=$equipe->getnom_equipe();
            $ch ="<h2>$nom</h2>";
        }
        $ch .= "<table border='1'><tr><th>nom</th><th>prenom</th><th>poste</th><th>capitaine</th></tr>";
        $equipeid=$joueur->getIdEquipe();
    } else {
        $ch.='<tr>'.$joueur.'</tr>';
        $it++;
    }
    //$ch.= "</tr></table>";
    if($it==11){
        echo $ch;
        $it=0;
    }
}

/* comme avant :
foreach($allJoueurs as $joueur) {
    $ch ="";
    $ch .= "<table border='1'><tr><th>id_joueur</th><th>nom</th><th>prenom</th><th>poste</th><th>capitaine</th><th>id_equipe</th></tr>";
    $ch.=$joueur;
    $ch.='</table>';
    echo $ch;
}
*/


echo Joueur::tableFooter(); // méthode ligne 152

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
