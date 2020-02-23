<?php

namespace projet_php;

class EntiteJoueur extends AbstractEntite
{
    const TABLENAME = 'Joueur';
    static $COLNAMES = array('id_joueur', 'prenom_joueur', 'nom_joueur', 'poste_joueur	', 'capitaine', 'id_equipe');
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
    protected $id_equipe;

    /**
     * EntiteJoueurs constructor.
     * @param array
     */
    public function __construct($param)
    {
        parent::setPersistant(false);
        $this->id_joueur = $param['id_equipe'];
        $this->prenom_joueur = $param['nom_equipe'];
        $this->nom_joueur = $param['nb_victoire'];
        $this->poste_joueur = $param['nb_defaite'];
        $this->capitaine = $param['nb_points'];
        $this->id_equipe = $param['id_equipe'];
    }

}