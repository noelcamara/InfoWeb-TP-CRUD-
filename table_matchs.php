<?php
include "html5_head.php";
?>
<a href='vuePrincipale.php'> Retour à l'accueil </a></br>
<?php

    include "Matchs.php";

    if(isset($_POST['delete']) && isset($_POST['id'])) {
        try {
            $Match = Matchs::initMatch($_POST['id']);
        } catch (Exception $e) {
            echo "initialisation de match ratée";
        }
        $Match->delete();
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

    $allMatch = Matchs::getAll();

    echo Matchs::tableEntete(); // méthode ligne 310

    foreach($allMatch as $Match) {
        echo $Match;
    }

    echo Matchs::tableFooter(); // méthode ligne 310+-

    ?>

<div class='suivant'>
    <form method="post">
        <input type='hidden' name='page' value=<?php echo $page ?> />
        <input type='hidden' name='dir' value='tableMatch' />
        <input type='submit' name='precedent' value='Precedent' />
        <input type='submit' name='suivant' value='Suivant' />
    </form>
</div>

<form method="post">
    <input type='hidden' name='dir' value='formMatch' />
    <input type='submit' value='Ajouter Match' />
</form>

<?php
    include "html5_footer.php";
?>
