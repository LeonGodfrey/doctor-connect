<?php
class DB{

   public static   $db = null;

   public static function getConnection(){
      try{
      $host = "localhost";
      $dbname  = "id18378213_hospital";
      DB::$db = new PDO("mysql:host=$host;dbname=$dbname","id18378213_admin","WEKRN38o?L{~l?h/");
      DB::$db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
      }catch(Exception $e){
         print_r($e->getMessage());
      }

      return DB::$db;

   }

}
