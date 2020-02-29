<?php

include "HTMLdebut.php";
include "HTMLfin.php";

session_start();
// initialisation des chaînes à afficher
$contenu = "";
$message = "";
$_SESSION['table_name']=$_GET['table'];
switch ($_SESSION['état']) {
    case 'Accueil':
        break;

    case 'afficheTable' :
        $classeVue = new ReflectionClass("projet_php\VueEntite");
        $vue = $classeVue->newInstance();
        // Titre
        $contenu .= "<h1>Table " . $_SESSION['table_name'] . "</h1>";

        // Contenu
        try {
            $classeEntite = new ReflectionClass("projet_php\Entite" . ucfirst($_SESSION['table_name']));
        } catch (ReflectionException $e) {
        }
        $keyName = $classeEntite->getStaticPropertyValue(("PK"))[0];
        $contenu .= $myPDO->getAll($keyName);

        // ajout d'un lien pour la création d'un nouvel élement
        $contenu .= "<p><a href='index.php?action=créerEntité&table_name=" . $_SESSION['table_name'] . "'>
                Créer une nouvelle entité</a></p>\n";
        break;

    case 'formulaireTable':
        //rien à faire, tout est fait dans la gestion des Actions ?
        break;

    default:
        $message .= "<p>état " . $_SESSION['etat'] . " inconnu</p>\n";
        $_SESSION['etat'] = 'Accueil';

}

echo debutHTML();
echo getTableMatiere();
echo $_SESSION['table_name'];
echo $message;
echo $contenu;
echo finHTML();
