<?php

include 'config.php';

class Metierequipe {

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
     * PreparedStatement associé à un SELECT, calcule le nombre de livres de la table
     * @var PDOStatement;
        */
    private static $_pdos_count;

    /**
     * PreparedStatement associé à un SELECT, récupère tous les livres
     * @var PDOStatement;
        */
     private static $_pdos_selectAll;



    /**
     * Initialisation de la connexion et mémorisation de l'instance PDO dans LivreMetier::$_pdo
     */
    public static function initPDO() {
        self::$_pdo = new PDO('mysql:dbname=bm142013;host=localhost', 'bm142013', '20142013');
        // pour récupérer aussi les exceptions provenant de PDOStatement
        self::$_pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    /**
     * préparation de la requête SELECT * FROM livre
     * instantiation de self::$_pdos_selectAll
        */
    public static function initPDOS_selectAll() {
        self::$_pdos_selectAll = self::$_pdo->prepare('SELECT * FROM equipe');
    }

     /**
     * méthode statique instanciant LivreMetier::$_pdo_select
     */
    public static function initPDOS_select() {
        self::$_pdos_select = self::$_pdo->prepare('SELECT * FROM equipe WHERE id_equipe = :id_equipe');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_update
     */
    public static function initPDOS_update() {
        self::$_pdos_update =  self::$_pdo->prepare('UPDATE equipe SET nom_equipe =:nom_equipe, nb_victoire =:nb_victoire, nb_defaite =:nb_defaite, nb_points =:nb_points WHERE id_equipe=:id_equipe');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_insert
     */
    public static function initPDOS_insert() {
        self::$_pdos_insert = self::$_pdo->prepare('INSERT INTO equipe VALUES(:id_equipe,:nom_equipe,:nb_victoire, :nb_defaite, :nb_points)');
    }

    /**
     * méthode statique instanciant equipeMetier::$_pdo_delete
     */
    public static function initPDOS_delete() {
        self::$_pdos_delete = self::$_pdo->prepare('DELETE FROM equipe WHERE id_equipe=:id_equipe');
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



    protected $id_equipe;
    protected $nom_equipe;
    protected $nb_victoire;
    protected $nb_defaite;
    protected $nb_points;

    /**
     * attribut interne pour différencier les nouveaux objets des objets créés côté applicatif de ceux issus du SGBD
     * @var bool
     */
    private $nouveau = TRUE;


    public function getEquipe_num() : int {
        return $this->id_equipe;
    }
    public function setEquipe_num($equipe_num): void {
        $this->id_equipe=$equipe_num;
    }


    public function getNom_equipe() : string {
        return $this->nom_equipe;
    }
    public function setNom_equipe($nom_equipe): void {
        $this->nom_equipe=$nom_equipe;
    }


    public function getNb_Victoire() : int {
        return $this->nb_victoire;
    }
    public function setNb_Victoire($nb_victoire) : void {
        $this->nb_defaite=$nb_victoire;
    }


    public function getNb_Defaite() : int {
        return $this->nb_defaite;
    }
    public function setNb_Defaite($nb_defaite) : void {
        $this->nb_defaite=$nb_defaite;
    }


    public function getNb_Points() : int {
        return $this->nb_points;
    }
    public function setNb_Points($nb_points) : void {
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
     * @return un tableau de tous les MetierEquipe
     */
    public static function getAll(): array {
        try {
            if (!isset(self::$_pdo))
                self::initPDO();
            if (!isset(self::$_pdos_selectAll))
                self::initPDOS_selectAll();
            self::$_pdos_selectAll->execute();
            // résultat du fetch dans une instance de LivreMetier
            $lesEquipe = self::$_pdos_selectAll->fetchAll(PDO::FETCH_CLASS,'MetierEquipe');
            return $lesEquipe;
        }
        catch (PDOException $e) {
            print($e);
        }
    }


    /**
     * initialisation d'un objet métier à partir d'un enregistrement de livre
     * @param $liv_num un identifiant de livre
     * @return l'instance de LivreMetier associée à $liv_num
     */
    public static function initequipeMetier($id_equipe) : Metierequipe {
        try {
	        if (!isset(self::$_pdo))
	            self::initPDO();
	        if (!isset(self::$_pdos_select))
	            self::initPDOS_select();
	        self::$_pdos_select->bindValue(':numero',$id_equipe);
	        self::$_pdos_select->execute();
        // résultat du fetch dans une instance de Metierequipe
	        $lm = self::$_pdos_select->fetchObject('MetierEquipe');
	        if (isset($lm) && ! empty($lm))
	            $lm->setNouveau(FALSE);
	        if (empty($lm))
                throw new Exception("Id équipe $id_equipe inexistant dans la table equipe.\n");
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
            self::$_pdos_insert->bindParam(':nb_victoire', $this->nb_victoire);
            self::$_pdos_insert->bindParam(':nb_defaite', $this->nb_defaite);
            self::$_pdos_insert->bindParam(':nb_points', $this->nb_points);
            self::$_pdos_insert->execute();
            $this->setNouveau(FALSE);
        }
        else {
            if (!isset(self::$_pdos_update))
	            self::initPDOS_update();
            self::$_pdos_update->bindParam(':numero', $this->id_equipe);
            self::$_pdos_update->bindParam(':nom', $this->nom_equipe);
            self::$_pdos_update->bindParam(':nb_victoire', $this->nb_victoire);
            self::$_pdos_update->bindParam(':nb_defaite', $this->nb_defaite);
            self::$_pdos_update->bindParam(':nb_points', $this->nb_points);
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

	public static function tableEntete() {
    	return "<table border='1'><tr><th>id_equipe</th><th>Nom_equipe</th><th>Nb_victoire</th><th>Nb_defaite</th><th>Nb_points</th></tr>";
    }

    public static function tableFooter() {
    	return "</table>";
    }

    /**
     * nombre d'objets metier disponible dans la table
     */
    public static function getNbEquipe() : int {
        if (!isset(self::$_pdos_count)) {
            self::initPDOS_count();
        }
        self::$_pdos_count->execute();
        $resu = self::$_pdos_count->fetch();
        return $resu[0];
    }

    public static function getAllLimit($offset, $limit) {
        try {
            if (!isset(self::$_pdo)) {
                self::initPDO();

            self::initPDOS_selectAllLimit($offset, $limit);
            self::$_pdos_selectAllLimit->execute();
            // résultat du fetch dans une instance de MetierJudoka
            $equipes = self::$_pdos_selectAllLimit->fetchAll(PDO::FETCH_CLASS,'MetierEquipe');
            return $equipes;
        }
        } catch (PDOException $e) {
            print($e);
        }
    }


    /**
     * affichage élémentaire
     */
    public function __toString() : string {
        $ch = "<table border='1'><tr><th>id_equipe</th><th>nom_equipe</th<th>Nb_victoire</th><th>Nb_defaite</th><th>Nb_points</th><th>nouveau</th></tr><tr>";
        $ch.= "<td>".$this->id_equipe."</td>";
        $ch.= "<td>".$this->nom_equipe."</td>";
        $ch.= "<td>".$this->nb_victoire."</td>";
        $ch.= "<td>".$this->nb_defaite."</td>";
        $ch.= "<td>".$this->nb_points."</td>";
        $ch.= "<td>".$this->nouveau."</td>";
        $ch.= "</tr></table>";
        return $ch;
    }
}
?>
