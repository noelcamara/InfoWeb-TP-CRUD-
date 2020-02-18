<?php


class Match {


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
     * PreparedStatement associé à un SELECT, calcule le nombre de equipes de la table
     * @var PDOStatement;
     */
    private static $_pdos_count;

    /**
     * PreparedStatement associé à un SELECT, récupère tous les equipes
     * @var PDOStatement;
     */
    private static $_pdos_selectAll;



    /**
     * Initialisation de la connexion et mémorisation de l'instance PDO dans equipeMetier::$_pdo
     */
    public static function initPDO() {
        self::$_pdo = new PDO("mysql:host=".$_ENV['host'].";dbname=".$_ENV['db'],$_ENV['user'],$_ENV['passwd']);
        // pour récupérer aussi les exceptions provenant de PDOStatement
        self::$_pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    /**
     * préparation de la requête SELECT * FROM equipe
     * instantiation de self::$_pdos_selectAll
     */
    public static function initPDOS_selectAll() {
        self::$_pdos_selectAll = self::$_pdo->prepare('SELECT * FROM matchs');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_select
     */
    public static function initPDOS_select() {
        self::$_pdos_select = self::$_pdo->prepare('SELECT * FROM matchs WHERE id_matchs= :numero');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_update
     */
    public static function initPDOS_update() {
        self::$_pdos_update =  self::$_pdo->prepare('UPDATE matchs SET :numero,:date_match,:elim_drecte, :score_equipe_1, :score_equipe_2,:id_equipe_1,:id_equipe_2 WHERE id_match=:numero');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_insert
     */
    public static function initPDOS_insert() {
        self::$_pdos_insert = self::$_pdo->prepare('INSERT INTO matchs VALUES(:numero,:date_match,:elim_drecte, :score_equipe_1, :score_equipe_2,:id_equipe_1,:id_equipe_2)');
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
     * numéro du equipe (identifiant dans la table equipe)
     * @var int
     */
    protected $id_equipe_1;

    /**
     * numéro du equipe (identifiant dans la table equipe)
     * @var int
     */
    protected $id_equipe_2;

    /**
     * nombre de points de l'equipe 1
     *   @var string
     */
    protected $nb_points_Equipe_1;

    /**
     * nombre de points de l'equipe 2
     *   @var string
     */
    protected $nb_points_Equipe_2;

    /**
     * id du match
     *   @var int
     */
    protected $id_match;

    /**
     * date du match en jj/mm/aaaa
     *   @var DateTime
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
        return $this->elim_directe=$elim;
    }

    /**
     * match à élimination directe : renvoie oui, sinon non
     * @return $this->elim_directe
     */
    public function get_elim_directe(): string {
        return $this->elim_directe;
    }

    /**
     * @return int
     */
    public function set_date_match($date): DateTime {
        $this->date=$date;
    }

    /**
     * @return DateTime
     */
    public function get_date_match(): DateTime {
        return $this->date;
    }

    /**
     * @return $this->id_equipe_1
     */
    public function getid_equipe_1() : int {
        return $this->id_equipe_1;
    }

    /**
     * @return $this->id_equipe_2
     */
    public function getid_equipe_2() : int {
        return $this->id_equipe_2;
    }
    /**
     * @param $id_equipe
     */
    public function setid_equipe_1($id_equipe): void {
        $this->id_equipe_1=$id_equipe;
    }

    /**
     * @param $id_equipe
     */
    public function setid_equipe_2($id_equipe): void {
        $this->id_equipe_2=$id_equipe;
    }

    /**
     * @return $this->nom_equipe
     */
    public function getnom_equipe_1() : string {
        return $this->nom_equipe_1;
    }

    /**
     * @return $this->nom_equipe
     */
    public function getnom_equipe_2() : string {
        return $this->nom_equipe_2;
    }

    /**
     * @param $nom_equipe
     */
    public function setnom_equipe_1($nom_equipe): void {
        $this->nom_equipe_1=$nom_equipe;
    }

    /**
     * @param $nom_equipe
     */
    public function setnom_equipe_2($nom_equipe): void {
        $this->nom_equipe_2=$nom_equipe;
    }

    /**
     * @param $nom_equipe
     */
    public function setNb_points_equipe_1($nb_points): void {
        $this->nb_points_Equipe_1=$nb_points;
    }

    /**
     * @param $nom_equipe
     */
    public function setNb_points_equipe_2($nb_points): string {
        $this->nb_points_Equipe_2=$nb_points;
    }

    /**
     * @return $this->nb_victoire
     */
    public function getNb_points_Equipe_1() : string {
        return $this->nb_points_Equipe_1;
    }

    /**
     * @return $this->nb_victoire
     */
    public function getnb_points_Equipe_2() : string {
        return $this->nb_points_Equipe_2;
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

    /**
     * @return un tableau de tous les equipeMetier
     */
    public static function getAll(): array {
        try {
            if (!isset(self::$_pdo))
                self::initPDO();
            if (!isset(self::$_pdos_selectAll))
                self::initPDOS_selectAll();
            self::$_pdos_selectAll->execute();
            // résultat du fetch dans une instance de equipeMetier
            $lesequipes = self::$_pdos_selectAll->fetchAll(PDO::FETCH_CLASS,'Match');
            return $lesequipes;
        }
        catch (PDOException $e) {
            print($e);
        }
    }
}