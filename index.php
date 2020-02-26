<?php

session_start();

include "MyPDO.php";
include "config.php";

include "EntiteEquipe.php";
include "EntiteJoueur.php";
include "EntiteMatchs.php";
include "VueEntite.php";


function getDebutHTML(): string
{
    return "
    <!doctype html>
    <html lang=\"fr\">
    <head>
        <meta charset=\"utf-8\">
        <title>CRUD Interface</title>
    <!-- <link rel=\"stylesheet\" href=\"style.css\"> -->
    <!-- <script src=\"script.js\"></script> -->
    </head>
    <body>";
}

function getFinHTML(): string
{
    return "</body></html>";
}

function getListeTables(): string
{

    return "   
             <p><a href='index.php?action=selectionnerTable&table_name=Equipe'>Table Equipe</a></p>\n
             <p><a href='index.php?action=selectionnerTable&table_name=Joueur'>Table Joueur</a></p>\n
             <p><a href='index.php?action=selectionnerTable&table_name=Matchs'>Table Matchs</a></p>\n
        ";
}

// initialisation de la connexion via l'instance de MyPDO

try {
    $myPDO = new MyPDO($_ENV['sgbd'], $_ENV['host'], $_ENV['db'], $_ENV['user'], $_ENV['password']);
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}
// initialisation des chaînes à afficher
$contenu = "";
$message = "";

// ajout d'un lien vers la page d'accueil
$contenu .= "<p><a href='index.php?action=initialiser'>Accueil</a></p>\n";

if (!isset($_GET['action']))
    $_GET['action'] = "initialiser";

 switch ($_GET['action']) {
    case 'initialiser':
        $_SESSION['état'] = 'Accueil';
        break;
    case 'selectionnerTable':
        $myPDO->setNomTable($_GET['table_name']);
        $_SESSION['état'] = 'afficheTable';
        $_SESSION['table_name'] = $_GET['table_name'];
        break;

    case 'supprimerEntité':
        $myPDO->setNomTable($_SESSION['table_name']);
        // récupération du nom de colonne dans le GET
        $keyName = array_keys(array_diff_key($_GET, array('action' => TRUE)))[0];

        $res = $myPDO->delete(array($keyName => $_GET[$keyName]));
        $message .= "<p>Entité " . $_GET[$keyName] . " supprimée</p>\n";
        if (!$res)
            $message = "<p>Impossible de supprimer cette ligne</p>\n";

        $_SESSION['etat'] = 'afficheTable';
        break;

    case 'créerEntité': // construction du formulaire de création de l'entité
        $myPDO->setNomTable($_SESSION['table_name']);

        // Réflection pour récupérer la structure de l'entité
        try {
            $classeEntite = new ReflectionClass("projet_php\Entite" . ucfirst($_SESSION['table_name']));
        } catch (ReflectionException $e) {
        }

        $colNames = $classeEntite->getStaticPropertyValue("COLNAMES");
        $colTypes = $classeEntite->getStaticPropertyValue("COLTYPES");
        $paramForm = array_combine($colNames, $colTypes);

        if ($classeEntite->getStaticPropertyValue("AUTOID"))
            // $paramForm est un tableau associatif destiné à configurer le formulaire
            $paramForm = array_diff_key($paramForm, array($classeEntite->getStaticPropertyValue(("PK"))[0] => TRUE));

        // Réflection pour récupérer la bonne vue
        try {
            $classeVue = new ReflectionClass("projet_php\VueEntite");
        } catch (ReflectionException $e) {
        }

        $vue = $classeVue->newInstance();
        $contenu .= $vue->getForm4Entity($paramForm, "insérerEntité");

        $_SESSION['état'] = 'formulaireTable';
        break;

    case 'modifierEntité':
        // construction du formulaire de modification de l'entité
        $myPDO->setNomTable($_SESSION['table_name']);

        // Réflection pour récupérer la structure de l'entité
        try {
            $classeEntite = new ReflectionClass("projet_php\Entite" . ucfirst($_SESSION['table_name']));
        } catch (ReflectionException $e) {
        }

        $colNames = $classeEntite->getStaticPropertyValue("COLNAMES");
        $colTypes = $classeEntite->getStaticPropertyValue("COLTYPES4UPDATE");
        $nomDeLaCle = $classeEntite->getStaticPropertyValue(("PK"));
        $colTypes[0]['default'] = $_GET[$nomDeLaCle[0]];

        $paramForm = array_combine($colNames, $colTypes);

        // Réflection pour récupérer la vue
        try {
            $classeVue = new ReflectionClass("projet_php\VueEntite");
        } catch (ReflectionException $e) {
        }

        $vue = $classeVue->newInstance();
        $contenu .= $vue->getForm4Entity($paramForm, "sauverEntité");
        $_SESSION['état'] = 'formulaireTable';
        break;

    case 'insérerEntité':
        // validation du formulaire de création d'une entité
        $myPDO->setNomTable($_SESSION['table_name']);

        // Réflection pour récupérer la structure de l'entité
        try {
            $classeEntite = new ReflectionClass("projet_php\Entite" . ucfirst($_SESSION['table_name']));
        } catch (ReflectionException $e) {
        }

        $paramInsert = array_diff_key($_GET, array('action' => 'insérerEntité', 'Valider' => 'Sauver'));
        $keyName = $classeEntite->getStaticPropertyValue(("PK"))[0];
        $KeyCurrentValue = $myPDO->max($keyName);

        if ($classeEntite->getStaticPropertyValue("AUTOID"))
            $paramInsert = array_merge(array($keyName => $KeyCurrentValue + 1), $paramInsert);

        $entite = $classeEntite->newInstance($paramInsert);
        $res = $myPDO->insert($paramInsert);
        $entite->setPersistant(true);

        if (!$res) {
            $message = "<p>Impossible de créer cette entité.</p>\n";
        } else
            $message .= "<p>Entité crée</p>\n";

        $_SESSION['état'] = 'afficheTable';
        break;

    case 'sauverEntité':  // validation  du formulaire de modification de l'entité
        $myPDO->setNomTable($_SESSION['table_name']);

        // Réflection pour récupérer la structure de l'entité
        try {
            $classeEntite = new ReflectionClass("projet_php\Entite" . ucfirst($_SESSION['table_name']));
        } catch (ReflectionException $e) {
        }

        $paramUpdate = array_diff_key($_GET, array('action' => 'sauverEntité', 'Valider' => 'Sauver'));
        $keyName = $classeEntite->getStaticPropertyValue(("PK"))[0];
        $message .= "<p>Entité " . $_GET[$keyName] . " mise à jour</p>\n";
        $res = $myPDO->update($keyName, $paramUpdate);

        if (!$res) {
            $message = "<p>Impossible de mettre à jour la colonne.</p>\n";
        }

        $_SESSION['état'] = 'afficheTable';
        break;
    default:
        $message .= "<p>Action " . $_GET['action'] . " non implémentée.</p>\n";
        $_SESSION['etat'] = 'Accueil';
}

switch ($_SESSION['état']) {
    case 'Accueil':
        $contenu .= getListeTables();
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

        $contenu2 =$myPDO->


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



// Production de la page HTML
echo getDebutHTML();
echo $message;
echo $contenu;
echo getFinHTML();