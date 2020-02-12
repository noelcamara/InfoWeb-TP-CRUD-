Classe Joueur

<?php

class Matchs
{
    protected $id_match;
    protected $date_match;
    protected $elim_directe;
    protected $type;
    protected $score_equipe1;
    protected $score_equipe2;
    protected $id_equipe1;
    protected $id_equipe2;

    private $persistant;

    **
     * @return int
     */
    public function getIMatch(): int
    {
        return $this->id_match;
    }

    /**
     * @param int $id_match
     * @return Match
     */
    public function setIdMatch(int $id_match): Match
    {
        $this->id_match = $id_match;
        return $this;
    }

    /**
     * @return date
     */
    public function getDateMatch(): date
    {
        return $this->date_match;
    }

    /**
     * @param date $date_match
     * @return Match
     */
    public function setDateMatch(date $date_match): Match
    {
        $this->date_match = $date_match;
        return $this;
    }
    
    /**
     * @return string
     */
    public function getElimDirecte(): string
    {
        return $this->elim_directe;
    }

    /**
     * @param string $elim_directe
     * @return Match
     */
    public function setElimDirecte(string $elim_directe): Match
    {
        $this->elim_directe = $elim_directe;
        return $this;
    }
    /**
     * @return string
     */
    public function getType(): string
    {
        return $this->type;
    }

    /**
     * @param string $type
     * @return Match
     */
    public function setType(string $type): Match
    {
        $this->type = $type;
        return $this;
    }

    /**
     * @return int
     */
    public function getScoreEquipe1(): int
    {
        return $this->score_equipe1;
    }

    /**
     * @param int $score_equipe1
     * @return Match
     */
    public function setScoreEquipe(int $score_equipe1): Match
    {
        $this->score_equipe1 = $score_equipe1;
        return $this;
    }
    /**
     * @return int
     */
    public function getScoreEquipe2(): int
    {
        return $this->score_equipe2;
    }

    /**
     * @param int $score_equipe2
     * @return Match
     */
    public function setScoreEquipe2(int $score_equipe2): Match
    {
        $this->score_equipe2 = $score_equipe2;
        return $this;
    }
    /**
     * @return int
     */
    public function getIdEquipe1(): int
    {
        return $this->getIdEquipe();
    }

    /**
     * @param int $id_equipe1
     * @return Match
     */
    public function setIdEquipe1(int $id_equipe1): Match
    {
        $this->id_equipe1 = $id_equipe1;
        return $this;
    }
    /**
     * @return int
     */
    public function getIdEquipe2(): int
    {
        return $this->getIdEquipe();
    }

    /**
     * @param int $id_equipe
     * @return Match
     */
    public function setIdEquipe2(int $id_equipe2): Match
    {
        $this->id_equipe2 = $id_equipe2;
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
        return "object:Match (".$this->id_match.", ".$this->date_match.",
                                        ".$this->elim_directe.", ".$this->type.", ".$this->score_equipe1.", ".$this->score_equipe2.",
                           ".$this->id_equipe1.", ".$this->id_equipe2.")";
    }
}

