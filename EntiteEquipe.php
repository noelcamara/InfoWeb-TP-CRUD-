<?php

namespace projet_php;

require "AbstractEntite.php";

class EntiteEquipe extends AbstractEntite
{
    const TABLENAME = 'Equipe';
    static $COLNAMES = array('id_equipe', 'nom_equipe', '<br>nb_victoire', '<br>nb_defaite', '<br>nb_points');
    static $COLTYPES = array('number', 'text', 'number', 'number', 'number'); // par facilité, les types des formulaires
    static $COLTYPES4UPDATE = array(array('type' => 'hidden', 'default' => ''),'text', 'number', 'number', 'number');
    static $PK = array('id_equipe');  // tableau pour une éventuelle clé composite
    static $AUTOID = TRUE; // booléen indiquant si le renseignement de la clé est automatisé
    static $FK = array();  // tableau pour les éventuelles clés étrangères

    protected $id_equipe;
    protected $nom_equipe;
    protected $nb_victoire;
    protected $nb_defaite;
    protected $nb_points;

    /**
     * EntiteJoueurs constructor.
     * @param array
     */
    public function __construct($param)
    {
        parent::setPersistant(false);
        $this->id_equipe = $param['id_equipe'];
        $this->nom_equipe = $param['nom_equipe'];
        $this->nb_victoire = $param['nb_victoire'];
        $this->nb_defaite = $param['nb_defaite'];
        $this->nb_points = $param['nb_points'];
    }

}
