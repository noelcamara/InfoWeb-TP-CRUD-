<?php
    include "MyIterator.php";

    class MyPDO {
        /**
         * @var PDO
         */
        private $pdo;

        /**
         * @var PDOStatement
         */
        private $pdos_selectAll;

        /**
         * @var PDOStatement
         */
        private $pdos_select;

        /**
         * @var PDOStatement
         */
        private $pdos_update;

        /**
         * @var PDOStatement
         */
        private $pdos_insert;

        /**
         * @var PDOStatement
         */
        private $pdos_delete;

        /**
         * @var PDOStatement
         */
        private $pdos_count;

        /**
         * @var PDOStatement
         */
        private $pdos_max;

        /**
         * @var string
         */
        private $nomTable;

        /**
         * MyPDO constructor.
         * @param $sgbd
         * @param $host
         * @param $db
         * @param $user
         * @param $password
         */
        public function __construct($sgbd, $host, $db, $user, $password) {
            switch ($sgbd) {
                case "mysql":
                    $this->pdo = new PDO("mysql:host=".$host.";dbname=".$db, $user, $password);
                    break;
                case "pgsql":
                    $this->pdo = new PDO("pgsql:host=".$host." dbname=".$db." user=".$user." password=".$password);
                    break;
                default:
                    exit;
            }
            // Pour récupérer aussi les exceptions provenant de PDOStatement
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }

        /**
         * Préparation de la requête SELECT * FROM $nomTable
         * Instantiation de $this->pdos_selectAll
         * @param string $keyName
         */
        public function initPDOS_selectAll(string $keyName) {
            $this->pdos_selectAll = $this->pdo->prepare('SELECT * FROM '.$this->nomTable.' ORDER BY '.$keyName);
        }

        /**
         * Suppose une convention de nommage de la classe entité et de son namespace !!
         * @param string $keyName
         * @return string
         */
        public function getAll(string $keyName): string {
            if (!isset($this->pdos_selectAll))
                $this->initPDOS_selectAll($keyName);
            $this->getPdosSelectAll()->execute();
            $resultats = $this->getPdosSelectAll()->fetchAll(PDO::FETCH_ASSOC);

            // Génération du récursive iterator
            $it = new RecursiveArrayIterator($resultats);
            $tableauAAfficher = new MyIterator($it, $this->pdo, $this->nomTable);

            return $tableauAAfficher->getTHead().$tableauAAfficher->getTBody().$tableauAAfficher->getTFoot();
        }

        /**
         * Préparation de la requête SELECT * FROM $this->nomTable WHERE $nomColId = :id
         * Instantiation de $this->pdos_select
         * @param string $nomColID
         */
        public function initPDOS_select(string $nomColID = "id"): void {
            $requete = "SELECT * FROM ".$this->nomTable." WHERE $nomColID = :$nomColID";
            $this->pdos_select = $this->pdo->prepare($requete);
        }

        /**
         * Suppose une convention de nommage de la classe entité et de son namespace !!
         * @param $key , le nom de la colonne associée à la clé primaire
         * @param $val
         * @return mixed
         */
        public function get($key, $val) {
            if (!isset($this->pdos_select))
                $this->initPDOS_select($key);
            $this->getPdosSelect()->bindValue(":".$key, $val);
            $this->getPdosSelect()->execute();
            return $this->getPdosSelect()->fetchObject("projet\Entite".ucfirst($this->getNomTable()));
        }

        /**
         * @param string $nomColId
         * @param array $colNames
         */
        public function initPDOS_update(string $nomColId, array $colNames): void {
            $query = "UPDATE ".$this->nomTable." SET ";
            foreach ($colNames as $colName)
                $query .= $colName."=:".$colName.", ";
            $query = substr($query,0, strlen($query)-2);
            $query .= " WHERE ".$nomColId."=:".$nomColId.';';
            $this->pdos_update =  $this->pdo->prepare($query);
        }

        /**
         * @param string $id
         * @param array $assoc
         * @return bool
         */
        public function update(string $id, array $assoc): bool {
            if (! isset($this->pdos_update))
                $this->initPDOS_update($id, array_keys($assoc));
            foreach ($assoc as $key => $value)
                $this->getPdosUpdate()->bindValue(":".$key, $value);

            try {
                $this->getPdosUpdate()->execute();
            } catch (PDOException $e) {
                return false;
            }
            return true;
        }

        /**
         * @param array
         */
        public function initPDOS_insert(array $colNames): void {
            $query = "INSERT INTO ".$this->nomTable." VALUES(";
            foreach ($colNames as $colName)
                $query .= ":".$colName.", ";
            $query = substr($query, 0, strlen($query) - 2);
            $query .= ')';
            $this->pdos_insert = $this->pdo->prepare($query);
        }

        /**
         * @param array $assoc
         * @return bool
         */
        public function insert(array $assoc): bool {
            if (!isset($this->pdos_insert))
                $this->initPDOS_insert(array_keys($assoc));
            foreach ($assoc as $key => $value)
                $this->getPdosInsert()->bindValue(":".$key, $value);

            try {
                $this->getPdosInsert()->execute();
            } catch (PDOException $e) {
                return false;
            }
            return true;
        }

        /**
         * @param string
         */
        public function initPDOS_delete(string $nomColId = "id"): void {
            $this->pdos_delete = $this->pdo->prepare("DELETE FROM ". $this->nomTable." WHERE $nomColId=:".$nomColId);
        }

        /**
         * @param array $assoc
         * @return bool
         */
        public function delete(array $assoc) : bool {
            if (! isset($this->pdos_delete))
                $this->initPDOS_delete(array_keys($assoc)[0]);
            foreach ($assoc as $key => $value)
                $this->getPdosDelete()->bindValue(":".$key, $value);

            try {
                $this->getPdosDelete()->execute();
            } catch (PDOException $e) {
                return false;
            }
            return true;
        }


        /**
         * Préparation de la requête SELECT COUNT(*) FROM nomTable
         * Instantiation de self::$_pdos_count
         */
        public function initPDOS_count() {
            $this->pdos_count = $this->pdo->prepare('SELECT COUNT(*) FROM '.$this->nomTable);
        }

        /**
         * @param int
         * @return int
         */
        public function count(): int {
            if (!isset($this->pdos_count))
                $this->initPDOS_count();

            $this->getPdosCount()->execute();
            return $this->getPdosCount()->fetchColumn();
        }

        /**
         * Préparation de la requête SELECT COUNT(id) FROM nomTable
         * Instantiation de self::$_pdos_max
         * @param string $cle
         */
        public function initPDOS_max(string $cle) {
            $this->pdos_max = $this->pdo->prepare("SELECT MAX($cle) FROM ".$this->nomTable);
        }

        /**
         * @param string
         * @return int
         */
        public function max(string $cle): int {
            if (!isset($this->pdos_max))
                $this->initPDOS_max($cle);

            $this->getPdosMax()->execute();
            return $this->getPdosMax()->fetchColumn();
        }

        /**
         * @return PDO
         */
        public function getPdo(): PDO {
            return $this->pdo;
        }

        /**
         * @return PDOStatement
         */
        public function getPdosSelect(): PDOStatement {
            return $this->pdos_select;
        }

        /**
         * @return PDOStatement
         */
        public function getPdosSelectAll(): PDOStatement {
            return $this->pdos_selectAll;
        }

        /**
         * @return PDOStatement
         */
        public function getPdosUpdate(): PDOStatement {
            return $this->pdos_update;
        }

        /**
         * @return PDOStatement
         */
        public function getPdosInsert(): PDOStatement {
            return $this->pdos_insert;
        }

        /**
         * @return PDOStatement
         */
        public function getPdosDelete(): PDOStatement {
            return $this->pdos_delete;
        }

        /**
         * @return PDOStatement
         */
        public function getPdosCount(): PDOStatement {
            return $this->pdos_count;
        }

         /**
         * @return PDOStatement
         */
        public function getPdosMax(): PDOStatement {
            return $this->pdos_max;
        }

        /**
         * @return string
         */
        public function getNomTable(): string {
            return $this->nomTable;
        }

        /**
         * @param string $nomTable
         */
        public function setNomTable(string $nomTable): void {
            $this->nomTable = $nomTable;
        }
    }
