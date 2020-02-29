<?php

/**
 * Permet de parcourir une table et d'afficher le contenu dans un tableau
 * Class MyIterator
 */
class MyIterator extends RecursiveIteratorIterator
{
    protected $sortie = "";
    protected $iterateur;
    protected $pdo;
    protected $nom_table;
    protected $idValue;
    protected $idName;

    /**
     * MyIterator constructor.
     * @param $it
     * @param $pdo
     * @param $nom_table
     */
    public function __construct($it, $pdo, $nom_table)
    {
        $this->iterateur = $it;
        $this->pdo = $pdo;
        $this->nom_table = $nom_table;

        parent::__construct($this->iterateur, self::LEAVES_ONLY);
    }

    /**
     * @access  public
     * @return string
     */
    public function getTHead(): string
    {
        $this->sortie = '<table border="2" >';
        $this->sortie .= '<thead>';
        $this->sortie .= '<tr>';

        $resultats = $this->pdo->query(sprintf("SELECT * FROM $this->nom_table LIMIT 1" ));
        $champs = array_keys($resultats->fetch(PDO::FETCH_ASSOC));

        foreach ($champs as $champ) {
            $this->sortie .= '<th>' . $champ . '</th>';
        }

        $this->sortie .= '</tr>';
        $this->sortie .= '</thead>';
        $this->sortie .= '<tbody>' . PHP_EOL;
        return $this->sortie;
    }

    /**
     * @access  public
     */
    public function getTBody()
    {
        $this->next();
        $this->sortie = '<tr>';
        while ($this->valid()) {
            $this->sortie .= '<td>' . $this->current() . '</td>';
            $this->next();
        }
        $this->sortie .= '</tr>';
        return $this->sortie;
    }

    function current()
    {
        $i = parent::key();
        //Modification pour la suppression de Joueur
        if ($i == 'id_equipe' && $_SESSION['table_name'] == "Equipe" || $i == 'id_joueur' || $i == 'id_match') {
            $this->idName = $i;
            $this->idValue = parent::current();
        }
        return parent::current();
    }

    /**
     * @access  public
     * @return  string
     */
    public function getTFoot(): string
    {
        return '</tbody></table>';
    }

    /**
     * début d'une ligne
     * @access  public
     */
    public function beginChildren()
    {
        $this->sortie .= '<tr>';
    }

    /**
     * fin d'une ligne
     * @access  public
     */
    public function endChildren()
    {
        if (is_array($this->idName)) {
            $params = $this->idName[0]."=".$this->idValue[0]."&".$this->idName[1]."=".$this->idValue[1];
        } else {
            $params = $this->idName . "=" . $this->idValue;
        }
        $this->sortie .= "<td><a href='?action=modifierEntité&" . $params . "'>Modifier</a></td>";
        $this->sortie .= "<td><a href='?action=supprimerEntité&" . $params . "'>Supprimer</a></td>";
        $this->sortie .= '</tr>' . PHP_EOL;
    }
}
