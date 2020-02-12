Classe Joueur

<?php

class Joueur
{
    protected $id_joueur;
    protected $prenom_joueur;
    protected $nom_joueur;
    protected $poste_joueur;
    protected $capitaine;
    protected $id_equipe;

    private $persistant;

    **
     * @return int
     */
    public function getIdjoueur(): int
    {
        return $this->id_joueur;
    }

    /**
     * @param int $id_joueur
     * @return Equipe
     */
    public function setIdjoueur(int $id_joueur): Joueur
    {
        $this->id_joueur = $id_joueur;
        return $this;
    }

    /**
     * @return string
     */
    public function getPrenomJoueur(): string
    {
        return $this->prenom_joueur;
    }

    /**
     * @param string $prenom_joueur
     * @return Joueur
     */
    public function setPrenomJoueur(string $prenom_joueur): Joueur
    {
        $this->prenom_joueur = $prenom_joueur;
        return $this;
    }
    
    /**
     * @return string
     */
    public function getNomJoueur(): string
    {
        return $this->nom_joueur;
    }

    /**
     * @param string $nom_joueur
     * @return Joueur
     */
    public function setNomJoueur(string $nom_joueur): Joueur
    {
        $this->nom_joueur = $nom_joueur;
        return $this;
    }

    /**
     * @return string
     */
    public function getPosteJoueur(): string
    {
        return $this->poste_joueur;
    }

    /**
     * @param int $poste_joueur
     * @return Joueur
     */
    public function setPosteJoueur(string $poste_joueur): Joueur
    {
        $this->poste_joueur = $poste_joueur;
        return $this;
    }
     /**
     * @return string
     */
    public function getCapitaine(): string
    {
        return $this->capitaine;
    }

    /**
     * @param int $capitaine
     * @return Joueur
     */
    public function setCapiatine(string $capitaine): Joueur
    {
        $this->capitaine = $capitaine;
        return $this;
    }
 /**
     * @return int
     */
    public function getIdEquipe(): int
    {
        return $this->id_equipe;
    }

    /**
     * @param int $id_equipe
     * @return Equipe
     */
    public function setIdEquipe(int $id_equipe): Joueur
    {
        $this->id_equipe = $id_equipe;
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
     * @return Joueur
     */
    public function setPersistant(bool $persistant): Joueur
    {
        $this->persistant = $persistant;
        return $this;
    }

    public function __toString()
    {
        return "object:Joueur (".$this->id_joueur.", ".$this->prenom_joueur.",
                                        ".$this->nom_joueur.", ".$this->poste_joueur.", ".$this->capitaine.",
                           ".$this->id_equipe.")";
    }
}

