<?php 
require 'debut.html';
require 'MyPDO.php';

echo "hey";
$pdo = new MyPDO("mysql", "localhost", "mydatabase", "root", "password", "Equipe");
$pdo->initPDOS_select();
echo $pdo->getAll();

require 'fin.html';
?>