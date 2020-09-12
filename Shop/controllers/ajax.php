<?php 
require "database.php";
$bd = new Database();
$link = $bd->conn();

if(!empty($_GET['catigories'])){
    if($_GET['catigories'] == 'All'){
      $results = $bd->select_filter($link,'products',$_GET['table'],$_GET['ASC']);
       foreach ($results as $result) {
         echo $result['name'].'//'.$result['data'].'//'.$result['img'].'//'.$result['prise'].'||';
       }
     }else{
       $results = $bd->select_where($link,$_GET['catigories'],$_GET['table'],$_GET['ASC']);
       foreach ($results as $result) {
         echo $result['name'].'//'.$result['data'].'//'.$result['img'].'//'.$result['prise'].'||';
       }
  }
}

 ?>