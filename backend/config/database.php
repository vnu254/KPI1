<?php
class Database {
 private $host='localhost';
 private $db='task_system_v3';
 private $user='root';
 private $pass='';

 public function connect(){
  return new PDO(
   "mysql:host=$this->host;dbname=$this->db",
   $this->user,
   $this->pass
  );
 }
}
?>