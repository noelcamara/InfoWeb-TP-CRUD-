<?php

namespace projet_php;

class EntiteMatchs extends AbstractEntite
{
    const TABLENAME = 'Matchs';
    static $COLNAMES = array('id_match', 'date_match', '<br>elim_directe', '<br>type', '<br>score_equipe1', '<br>score_equipe2',
        '<br>id_equipe1', '<br>id_equipe2');
    static $COLTYPES = array('number', 'date', 'text', 'text', 'number', 'number', 'number', 'number'); // par facilité, les types des formulaires
    static $COLTYPES4UPDATE = array(array('type' => 'hidden', 'default' => ''),'date', 'text', 'text', 'number',
        'number', 'number', 'number');  // tableau pour une éventuelle clé composite
    static $PK = array('id_match');  // tableau pour une éventuelle clé composite
    static $AUTOID = TRUE; // booléen indiquant si le renseignement de la clé est automatisé
    static $FK = array('id_equipe1', 'id_equipe2');  // tableau pour les éventuelles clés étrangères

    protected $id_match;
    protected $date_match;
    protected $elim_directe;
    protected $type;
    protected $score_equipe1;
    protected $score_equipe2;
    protected $id_equipe1;
    protected $id_equipe2;


    /**
     * EntiteJoueurs constructor.
     * @param array
     */
    public function __construct($param)
    {
        parent::setPersistant(false);
        $this->id_match = $param['id_match'];
        $this->date_match = $param['date_match'];
        $this->elim_directe = $param['elim_directe'];
        $this->type = $param['type'];
        $this->score_equipe1 = $param['score_equipe1'];
        $this->score_equipe2 = $param['score_equipe2'];
        $this->id_equipe1 = $param['id_equipe1'];
        $this->id_equipe2 = $param['id_equipe2'];
    }

}
