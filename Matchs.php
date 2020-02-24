<?php
include "config.php";

class Matchs {

    /**
     * gestion statique des accès SGBD
     * @var PDO
     */
    private static $_pdo;

    /**
     * gestion statique de la requête préparée de selection
     * @var PDOStatement
     */
    private static $_pdos_select;

    /**
     * gestion statique de la requête préparée de mise à jour
     *  @var PDOStatement
     */
    private static $_pdos_update;

    /**
     * gestion statique de la requête préparée de d'insertion
     * @var PDOStatement
     */
    private static $_pdos_insert;

    /**
     * gestion statique de la requête préparée de suppression
     * @var PDOStatement
     */
    private static $_pdos_delete;

    /**
     * PreparedStatement associé à un SELECT, calcule le nombre de matchs de la table
     * @var PDOStatement;
     */
    private static $_pdos_count;

    /**
     * PreparedStatement associé à un SELECT, récupère tous les matchs
     * @var PDOStatement;
     */
    private static $_pdos_selectAll;


    /**
     * Initialisation de la connexion et mémorisation de l'instance PDO dans equipeMetier::$_pdo
     */
    public static function initPDO() {
        self::$_pdo = new PDO("mysql:host=".$_ENV['host'].";dbname=".$_ENV['db'],$_ENV['user'],$_ENV['passwd']);
        /* Maxence pc perso
        self::$_pdo = new PDO("mysql:host=".$_ENV['host'].";port=".$_ENV['port'].";dbname=".$_ENV['db'],$_ENV['user'],$_ENV['passwd']);
        */
        // pour récupérer aussi les exceptions provenant de PDOStatement
        self::$_pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    /**
     * préparation de la requête SELECT * FROM matchs
     * instantiation de self::$_pdos_selectAll
     */
    public static function initPDOS_selectAll() {
        self::$_pdos_selectAll = self::$_pdo->prepare('SELECT * FROM matchs;');
    }

    /**
     * méthode statique instanciant matchs::$_pdo_select
     */
    public static function initPDOS_select() {
        self::$_pdos_select = self::$_pdo->prepare('SELECT * FROM matchs WHERE id_match = :numero;');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_update
     */
    public static function initPDOS_update() {
        self::$_pdos_update = self::$_pdo->prepare('UPDATE matchs SET id_match=:numero,date_match=:date_match,elim_directe=:elim_drecte,type=:type,score_equipe1=:score_equipe1, score_equipe2=:score_equipe_2,id_equipe1=:id_equipe_1,id_equipe2=:id_equipe_2 WHERE id_match=:numero');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_insert
     */
    public static function initPDOS_insert() {
        self::$_pdos_insert = self::$_pdo->prepare('INSERT INTO matchs VALUES(:id_match,:date_match,:elim_directe,:type_m,:score_equipe1,:score_equipe2,:id_equipe1,:id_equipe2)');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_delete
     */
    public static function initPDOS_delete() {
        self::$_pdos_delete = self::$_pdo->prepare('DELETE FROM matchs WHERE id_matchs=:numero');
    }

    /**
     * préparation de la requête SELECT COUNT(*) FROM equipe
     * instantiation de self::$_pdos_count
     */
    public static function initPDOS_count() {
        if (!isset(self::$_pdo))
            self::initPDO();
        self::$_pdos_count = self::$_pdo->prepare('SELECT COUNT(*) FROM matchs');
    }

    /**
     * id du match
     *   @var int
     */
    protected $id_match;

    /**
     * numéro du equipe (identifiant dans la table equipe)
     * @var int
     */
    protected $id_equipe1;

    /**
     * numéro du equipe (identifiant dans la table equipe)
     * @var int
     */
    protected $id_equipe2;

    /**
     * nombre de points de l'equipe 1
     *   @var int
     */
    protected $score_equipe1;

    /**
     * nombre de points de l'equipe 2
     *   @var int
     */
    protected $score_equipe2;

    /**
     * date du match en jj/mm/aaaa
     *   @var string
     */
    protected $date;

    /**
     * l'équipe perdante est rayée de la compétition
     *   @var string
     */
    protected $elim_directe;

    /**
     * le tour du match (groupes, quart, demi finale etc)
     *   @var string
     */
    protected $type;

    /**
     * attribut interne pour différencier les nouveaux objets des objets créés côté applicatif de ceux issus du SGBD
     * @var bool
     */
    private $nouveau = TRUE;

    /**
     * (est-on censé faire un setteur d'id aussi ?
     * @return int
     */
    public function get_id_match(): int {
        return $this->id_match;
    }

    /**
     * match à élimination directe : renvoie oui, sinon non
     *
     */
    public function set_elim_directe($elim): void {
        $this->elim_directe=$elim;
    }

    /**
     * match à élimination directe : renvoie oui, sinon non
     * @return $this->elim_directe
     */
    public function get_elim_directe(): string {
        return $this->elim_directe;
    }

    /**
     * @param $date
     */
    public function set_date_match($date): void {
        $this->date=$date;
    }

    /**
     * @return string
     */
    public function get_date_match(): string {
        if($this->date==null)
            return "0";
        else
            return $this->date;
    }

    /**
     * @return $this->id_equipe_1
     */
    public function getid_equipe_1() : int {
        return $this->id_equipe1;
    }

    /**
     * @return $this->id_equipe_2
     */
    public function getid_equipe_2() : int {
        return $this->id_equipe2;
    }

    /**
     * @return $this->type_match
     */
    public function gettype() : string {
        return $this->type;
    }

    public function settype($type) : void {
        $this->type = $type;
    }

    /**
     * @param $id_equipe
     */
    public function setid_equipe_1($id_equipe): void {
        $this->id_equipe1=$id_equipe;
    }

    /**
     * @param $id_equipe
     */
    public function setid_equipe_2($id_equipe): void {
        $this->id_equipe2=$id_equipe;
    }

    /**
     * @param $nom_equipe
     */
    public function setnom_equipe_1($nom_equipe): void {
        $this->nom_equipe1=$nom_equipe;
    }

    /**
     * @param $nom_equipe
     */
    public function setnom_equipe_2($nom_equipe): void {
        $this->nom_equipe2=$nom_equipe;
    }

    /**
     * @param $nom_equipe
     */
    public function setscore_equipe_1($nb_points): void {
        $this->score_equipe1=$nb_points;
    }

    /**
     * @param $nom_equipe
     */
    public function setscore_equipe_2($nb_points): void {
        $this->score_equipe2=$nb_points;
    }

    /**
     * @param $id
     * @return mixed
     * @throws Exception
     */
    public static function initMatch($id_m) {
        try {
            if (!isset(self::$_pdo))
                self::initPDO();
            if (!isset(self::$_pdos_select))
                self::initPDOS_select();
            self::$_pdos_select->bindValue(':numero', $id_m);
            self::$_pdos_select->execute();
            // résultat du fetch dans une instance de matchs
            $lm = self::$_pdos_select->fetchObject('matchs');
            if (isset($lm) && ! empty($lm))
                $lm->setNouveau(FALSE);
            if (empty($lm))
                throw new Exception("Match $id_m inexistant dans la table matchs.\n");
            return $lm;
        }
        catch (PDOException $e) {
            print($e);
        }
    }

    /**
     * @return $this->nb_victoire
     */
    public function getscore_equipe_1() : string {
        return $this->score_equipe1;
    }

    /**
     * @return $this->nb_victoire
     */
    public function getscore_equipe_2() : string {
        return $this->score_equipe2;
    }

    /**
     * @return $this->nouveau
     */
    public function getNouveau() : bool {
        return $this->nouveau;
    }

    /**
     * @param $nouveau
     */
    public function setNouveau($nouveau): void {
        $this->nouveau=$nouveau;
    }

    public static function tableEntete(): string {
        return "";
    }

    public static function tableFooter(): string {
        return "";
    }

    /**
     * @return, un tableau de tous les matchs
     */
    public static function getAll(): array {
        try {
            if (!isset(self::$_pdo))
                self::initPDO();
            if (!isset(self::$_pdos_selectAll))
                self::initPDOS_selectAll();
            self::$_pdos_selectAll->execute();
            // résultat du fetch dans une instance de matchs
            return self::$_pdos_selectAll->fetchAll(PDO::FETCH_CLASS,'Matchs');
        }
        catch (PDOException $e) {
            print($e);
        }
    }

    /**
     * affichage élémentaire
     *
     */
    public function __toString() : string {
        $ch = "<table border='1'><tr><th>id_match</th><th>date_match</th><th>elim_directe</th><th>type</th><th>score_equipe_1</th><th>score_equipe_2</th><th>id_equipe_1</th><th>id_equipe_2</th></tr><tr>";
        $ch.= "<td>".$this->id_match."</td>";
        $ch.= "<td>".$this->date_match."</td>";
        $ch.= "<td>".$this->elim_directe."</td>";
        $ch.= "<td>".$this->type."</td>";
        $ch.= "<td>".$this->score_equipe1."</td>";
        $ch.= "<td>".$this->score_equipe2."</td>";
        $ch.= "<td>".$this->id_equipe1."</td>";
        $ch.= "<td>".$this->id_equipe2."</td>\n";
        $ch.= "</tr></table>";
        return $ch;
    }
}
