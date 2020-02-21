<?php
include 'config.php';
class Equipe {


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
        self::$_pdos_selectAll = self::$_pdo->prepare('SELECT * FROM equipe');
    }

     /**
     * méthode statique instanciant equipeMetier::$_pdo_select
     */
    public static function initPDOS_select() {
        self::$_pdos_select = self::$_pdo->prepare('SELECT * FROM equipe WHERE id_equipe= :numero');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_update
     */
    public static function initPDOS_update() {
        self::$_pdos_update =  self::$_pdo->prepare('UPDATE equipe SET nom_equipe=:nom, nb_victoire=:victoire, nb_defaite=:defaite, nb_points=:points WHERE id_equipe=:numero');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_insert
     */
    public static function initPDOS_insert() {
        self::$_pdos_insert = self::$_pdo->prepare('INSERT INTO equipe VALUES(:numero,:nom,:victoire, :defaite, :points)');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_delete
     */
    public static function initPDOS_delete() {
        self::$_pdos_delete = self::$_pdo->prepare('DELETE FROM equipe WHERE id_equipe=:numero');
    }

    /**
     * préparation de la requête SELECT COUNT(*) FROM equipe
     * instantiation de self::$_pdos_count
        */
    public static function initPDOS_count() {
        if (!isset(self::$_pdo))
            self::initPDO();
        self::$_pdos_count = self::$_pdo->prepare('SELECT COUNT(*) FROM equipe');
    }


     /**
     * numéro du equipe (identifiant dans la table equipe)
     * @var int
     */
    protected $id_equipe;

    /**
     * nom du equipe
     * @var string
     */
    protected $nom_equipe;

    /**
     * nombre de victoire de l'equipe
     *   @var string
     */
    protected $nb_victoire;

    /**
     * nombre de defaite de l'equipe
     *   @var string
     */
    protected $nb_defaite;

    /**
     * nombre de points de l'equipe
     *   @var string
     */
    protected $nb_points;

    /**
     * attribut interne pour différencier les nouveaux objets des objets créés côté applicatif de ceux issus du SGBD
     * @var bool
     */
    private $nouveau = TRUE;

    /**
     * @return $this->id_equipe
     */
    public function getid_equipe() : int {
        return $this->id_equipe;
    }


    public static function tableEntete() : string {
        return "";
    }

    public static function tableFooter() : string {
        return "";
    }

    /**
     * @param $id_equipe
     */
    public function setid_equipe($id_equipe): void {
        $this->id_equipe=$id_equipe;
    }

    /**
     * @return $this->nom_equipe
     */
    public function getnom_equipe() : string {
        return $this->nom_equipe;
    }

    /**
     * @param $nom_equipe
     */
    public function setnom_equipe($nom_equipe): void {
        $this->nom_equipe=$nom_equipe;
    }

    /**
     * @return $this->nb_victoire
     */
    public function getnb_victoire() : string {
        return $this->nb_victoire;
    }

    /**
     * @param $nb_victoire
     */
    public function setnb_victoire($nb_victoire): void {
        $this->nb_victoire=$nb_victoire;
    }

    /**
     * @return $this->nb_victoire
     */
    public function getnb_defaite() : string {
        return $this->nb_defaite;
    }

    /**
     * @param $nb_victoire
     */
    public function setnb_defaite($nb_defaite): void {
        $this->nb_defaite=$nb_defaite;
    }


    /**
     * @return $this->nb_victoire
     */
    public function getnb_points() : string {
        return $this->nb_points;
    }

    /**
     * @param $nb_victoire
     */
    public function setnb_points($nb_points): void {
        $this->nb_points=$nb_points;
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
            $lesequipes = self::$_pdos_selectAll->fetchAll(PDO::FETCH_CLASS,'Equipe');
            return $lesequipes;
        }
        catch (PDOException $e) {
            print($e);
        }
    }


    /**
     * initialisation d'un objet métier à partir d'un enregistrement de equipe
     * @param $id_equipe un identifiant de equipe
     * @return l'instance de equipeMetier associée à $id_equipe
     */
    public static function initEquipe($id_equipe) : equipe {
        try {
	        if (!isset(self::$_pdo))
	            self::initPDO();
	        if (!isset(self::$_pdos_select))
	            self::initPDOS_select();
	        self::$_pdos_select->bindValue(':numero',$id_equipe);
	        self::$_pdos_select->execute();
        // résultat du fetch dans une instance de equipeMetier
	        $lm = self::$_pdos_select->fetchObject('Equipe');
	        if (isset($lm) && ! empty($lm))
	            $lm->setNouveau(FALSE);
	        if (empty($lm))
                throw new Exception("equipe $id_equipe inexistant dans la table equipe.\n");
	        return $lm;
        }
        catch (PDOException $e) {
	        print($e);
        }
    }

    /**
     * sauvegarde d'un objet métier
     * soit on insère un nouvel objet
     * soit on le met à jour
     */
    public function save() : void {
        if (!isset(self::$_pdo))
            self::initPDO();
        if ($this->nouveau) {
            if (!isset(self::$_pdos_insert)) {
	            self::initPDOS_insert();
            }
            self::$_pdos_insert->bindParam(':numero', $this->id_equipe);
            self::$_pdos_insert->bindParam(':nom', $this->nom_equipe);
            self::$_pdos_insert->bindParam(':victoire', $this->nb_victoire);
            self::$_pdos_insert->bindParam(':victoire', $this->nb_defaite);
            self::$_pdos_insert->bindParam(':victoire', $this->nb_points);
            self::$_pdos_insert->execute();
            $this->setNouveau(FALSE);
        }
        else {
            if (!isset(self::$_pdos_update))
	            self::initPDOS_update();
            self::$_pdos_update->bindParam(':numero', $this->id_equipe);
            self::$_pdos_update->bindParam(':nom', $this->nom_equipe);
            self::$_pdos_update->bindParam(':victoire', $this->nb_victoire);
            self::$_pdos_update->bindParam(':victoire', $this->nb_defaite);
            self::$_pdos_update->bindParam(':victoire', $this->nb_points);
            self::$_pdos_update->execute();
        }
    }

    /**
     * suppression d'un objet métier
     */
    public function delete() :void {
        if (!isset(self::$_pdo))
            self::initPDO();
        if (!$this->nouveau) {
            if (!isset(self::$_pdos_delete)) {
	            self::initPDOS_delete();
            }
            self::$_pdos_delete->bindParam(':numero', $this->id_equipe);
            self::$_pdos_delete->execute();
        }
        $this->setNouveau(TRUE);
    }

    /**
     * nombre d'objets metier disponible dans la table
     */
    public static function getNbequipes() : int {
        if (!isset(self::$_pdos_count)) {
            self::initPDOS_count();
        }
        self::$_pdos_count->execute();
        $resu = self::$_pdos_count->fetch();
        return $resu[0];
    }



    /**
     * affichage élémentaire
     */
    public function __toString() : string {
        $ch = "<table border='1'><tr><th>id_equipe</th><th>nom_equipe</th><th>nb_victoire</th><th>nb_defaite</th><th>nb_points</th></tr><tr>";
        $ch.= "<td>".$this->id_equipe."</td>";
        $ch.= "<td>".$this->nom_equipe."</td>";
        $ch.= "<td>".$this->nb_victoire."</td>";
        $ch.= "<td>".$this->nb_defaite."</td>";
        $ch.= "<td>".$this->nb_points."</td>";
        $ch.= "</tr></table>";
        return $ch;
    }
  }
?>
