<?php
include 'config.php';

class Joueur {

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
     * Initialisation de la connexion et mémorisation de l'instance PDO dans joueur::$_pdo
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
     * préparation de la requête SELECT * FROM joueur
     * instantiation de self::$_pdos_selectAll
     */
    public static function initPDOS_selectAll() {
        self::$_pdos_selectAll = self::$_pdo->prepare('SELECT * FROM joueur');
    }

    /**
     * méthode statique instanciant joueur::$_pdo_select
     */
    public static function initPDOS_select() {
        self::$_pdos_select = self::$_pdo->prepare('SELECT * FROM joueur WHERE id_joueur= :numero');
    }

    /**
     * méthode statique instanciant joueur::$_pdo_update
     */
    public static function initPDOS_update() {
        self::$_pdos_update =  self::$_pdo->prepare('UPDATE joueur SET nom_joueur=:nom, prenom_joueur=:prenom, poste_joueur=:poste, capitaine=:capitaine WHERE id_equipe=:numero_equipe');
    }

    /**
     * méthode statique instanciant joueur::$_pdo_insert
     */
    public static function initPDOS_insert() {
        self::$_pdos_insert = self::$_pdo->prepare('INSERT INTO joueur VALUES(:id_joueur, :nom,:prenom, :poste, :capitaine, :numero_equipe)');
    }

    /**
     * méthode statique instanciant joueur::$_pdo_delete
     */
    public static function initPDOS_delete() {
        self::$_pdos_delete = self::$_pdo->prepare('DELETE FROM joueur WHERE id_joueur=:numero');
    }

    /**
     * préparation de la requête SELECT COUNT(*) FROM joueur
     * instantiation de self::$_pdos_count
     */
    public static function initPDOS_count() {
        if (!isset(self::$_pdo))
            self::initPDO();
        self::$_pdos_count = self::$_pdo->prepare('SELECT COUNT(*) FROM joueur');
    }

    /**
     * numéro du joueur (identifiant dans la table equipe)
     * @var int
     */
    protected $id_joueur;
    /**
     * nom du joueur (identifiant dans la table equipe)
     * @var string
     */
    protected $nom_joueur;
    /**
     * prénom du joueur (identifiant dans la table equipe)
     * @var string
     */
    protected $prenom_joueur;
    /**
     * poste du joueur (identifiant dans la table equipe)
     * @var string
     */
    protected $poste_joueur;
    /**
     * oui si le joueur capitaine, sinon non (identifiant dans la table equipe)
     * @var string
     */
    protected $capitaine;
    /**
     * id de l'équipe du joueur (identifiant dans la table equipe)
     * @var string
     */
    protected $id_equipe;

    /**
     * attribut interne pour différencier les nouveaux objets des objets créés côté applicatif de ceux issus du SGBD
     * @var bool
     */
    private $nouveau = TRUE;


    /**
     * @return $this->id_joueur
     */
    public function getid_joueur() : int {
        return $this->id_joueur;
    }

    public function setId_joueur() : int {
        return $this->id_joueur;
    }

    /**
     * @return string
     */
    public function getIdEquipe(): string {
        return $this->id_equipe;
    }

    /**
     * @param $id_equipe
     */
    public function setIdEquipe(string $id_equipe){
        $this->id_equipe=$id_equipe;
    }

    /**
     * @return string
     */
    public function getCapitaine(): string {
        return $this->capitaine;
    }

    /**
     * @param string $cap
     */
    public function setCapitaine( string $cap) {
        $this->capitaine=$cap;
    }

    /**
     * @return string
     */
    public function getNomJoueur(): string {
        return $this->nom_joueur;
    }

    /**
     * @param string $nom
     */
    public function setNomJoueur(string $nom){
        return $this->nom_joueur=$nom;
    }

    /**
     * @return string
     */
    public function getPrenomJoueur() {
        return $this->prenom_joueur;
    }

    /**
     * @param string $prenom
     */
    public function setPrenomJoueur(string $prenom) {
        $this->prenom_joueur = $prenom;
    }

    /**
     * @return string
     */
    public function getPosteJoueur() {
        return $this->poste_joueur;
    }

    /**
     * @param string $poste_joueur
     */
    public function setPosteJoueur(string $poste_joueur) {
        $this->poste_joueur = $poste_joueur;
    }

    /**
     * @param bool $b
     */
    public function setNouveau(bool $b){
        $this->nouveau=$b;
    }

    /**
     * @param bool $b
     * @return mixed
     */
    public function getNouveau(bool $b){
        return $this->nouveau;
    }

    public static function getAll() {
        try {
            if (!isset(self::$_pdo))
                self::initPDO();
            if (!isset(self::$_pdos_selectAll))
                self::initPDOS_selectAll();
            self::$_pdos_selectAll->execute();
            // résultat du fetch dans une instance de joueur
            $lesJoueurs = self::$_pdos_selectAll->fetchAll(PDO::FETCH_CLASS,'joueur');
            return $lesJoueurs;
        }
        catch (PDOException $e) {
            print($e);
        }
    }

    public static function tableEntete() {

    }

    public static function tableFooter() {

    }

    /**
     * initialisation d'un objet métier à partir d'un enregistrement de equipe
     * @param $id_joueur , un identifiant de equipe
     * @return l'instance de equipeMetier associée à $id_equipe
     * @throws Exception
     */
    public static function initJoueur($id_joueur) {
        try {
            if (!isset(self::$_pdo))
                self::initPDO();
            if (!isset(self::$_pdos_select))
                self::initPDOS_select();
            self::$_pdos_select->bindValue(':numero', $id_joueur);
            self::$_pdos_select->execute();
            // résultat du fetch dans une instance de joueur
            $lm = self::$_pdos_select->fetchObject('joueur');
            if (isset($lm) && ! empty($lm))
                $lm->setNouveau(FALSE);
            if (empty($lm))
                throw new Exception("joueur $id_joueur inexistant dans la table joueur.\n");
            return $lm;
        }
        catch (PDOException $e) {
            print($e);
        }
    }

    /**
     * affichage élémentaire
     */
    public function __toString() : string {
        $ch='';
        //$ch = "<table border='1'><tr><th>id_joueur</th><th>nom</th><th>prenom</th><th>poste</th><th>capitaine</th><th>id_equipe</th></tr><tr>";
        //$ch.= "<td>".$this->id_joueur."</td>";
        $ch.= "<td>".$this->nom_joueur."</td>";
        $ch.= "<td>".$this->prenom_joueur."</td>";
        $ch.= "<td>".$this->poste_joueur."</td>";
        $ch.= "<td>".$this->capitaine."</td>";
        //$ch.= "<td>".$this->id_equipe."</td>";
        //$ch.= "</tr></table>";
        return $ch;
    }




}
