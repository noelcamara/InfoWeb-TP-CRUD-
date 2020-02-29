<?php

namespace projet_php;

//require "AbstractEntite.php";

class EntiteJoueur extends AbstractEntite
{
    const TABLENAME = 'Joueur';
    static $COLNAMES = array('id_joueur', 'prenom_joueur', 'nom_joueur', 'poste_joueur', 'capitaine', 'id_equipe');
    static $COLTYPES = array('number', 'text', 'text', 'text', 'text', 'number'); // par facilité, les types des formulaires
    static $COLTYPES4UPDATE = array(array('type' => 'hidden', 'default' => ''), 'text', 'text', 'text', 'text', 'number');
    static $PK = array('id_joueur');  // tableau pour une éventuelle clé composite
    static $AUTOID = TRUE; // booléen indiquant si le renseignement de la clé est automatisé
    static $FK = array('id_equipe');  // tableau pour les éventuelles clés étrangères

    protected $id_joueur;
    protected $prenom_joueur;
    protected $nom_joueur;
    protected $poste_joueur;
    protected $capitaine;
    protected $f_id_equipe;

    /**
     * EntiteJoueurs constructor.
     * @param array
     */
    public function __construct($param)
    {
        parent::setPersistant(false);
        $this->id_joueur = $param['id_joueur'];
        $this->prenom_joueur = $param['prenom_joueur'];
        $this->nom_joueur = $param['nom_joueur'];

        $poste = isset($_POST['poste_joueur']) ? $_POST['poste_joueur'] : NULL;
        $this->poste_joueur = $poste;
        $this->capitaine = $param['capitaine'];
        $this->f_id_equipe = $param['id_equipe'];
    }

}