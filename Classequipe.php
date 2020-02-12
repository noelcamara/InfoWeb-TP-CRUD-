Classe Equipe

<?php

class Equipe
{
    protected $id_equipe;
    protected $nom_equipe;
    protected $nb_victoire;
    protected $nb_defaite;
    protected $nb_points;

    private $persistant;

    **
     * @return int
     */
    public function getIdequipe(): int
    {
        return $this->id_equipe;
    }

    /**
     * @param int $id_equipe
     * @return Equipe
     */
    public function setIdequipe(int $lid_equipe): Equipe
    {
        $this->id_joueur = $id_joueur;
        return $this;
    }

    /**
     * @return string
     */
    public function getNomEquipe(): string
    {
        return $this->nom_equipe;
    }

    /**
     * @param string $nom_equipe
     * @return Equipe
     */
    public function setNomEquipe(sring $nom_equipe): Equipe
    {
        $this->nom_equipe = $nom_equipe;
        return $this;
    }

    /**
     * @return int
     */
    public function getNbVictoir(): int
    {
        return $this->nb_victoir;
    }

    /**
     * @param int $nb_victoir
     * @return Equipe
     */
    public function setNbVictoir(int $nb_victoir): Equipe
    {
        $this->nb_victoir = $nb_victoir;
        return $this;
    }
     /**
     * @return int
     */
    public function getNbDefaite(): int
    {
        return $this->nb_defaite;
    }

    /**
     * @param int $nb_defaite
     * @return Equipe
     */
    public function setNbDefaite(int $nb_defaite): Equipe
    {
        $this->nb_defaite = $nb_defaite;
        return $this;
    }
 /**
     * @return int
     */
    public function getNbPoints(): int
    {
        return $this->nb_points;
    }

    /**
     * @param int $nb_points
     * @return Equipe
     */
    public function setNbPoints(int $nb_points): Equipe
    {
        $this->nb_points = $nb_points;
        return $this;
    }

    /**
     * @return bool
     */
    public function getPersistant(): bool
    {
        return $this->persistant;
    }

    /**
     * @param bool $persistant
     * @return Equipe
     */
    public function setPersistant(bool $persistant): Equipe
    {
        $this->persistant = $persistant;
        return $this;
    }

    public function __toString()
    {
        return "object:Equipe (".$this->id_equipe.", ".$this->nom_equipe.",
                                        ".$this->nb_victoir.", ".$this->nb_defaite.", 
                           ".$this->nb_points.")";
    }
}

