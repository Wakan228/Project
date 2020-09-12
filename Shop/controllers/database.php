<?php 
class Database{
	public $link;
 public function conn() { // подключение к БД
  $link = mysqli_connect('localhost','root','','shop1');
   return $link;
 }

  public function select($link,$table)
      {
        $sql = "SELECT * FROM $table";
                        $selectResult = $link->query($sql);
            if ($selectResult->num_rows > 0) {
         $cat = array();
         while($result = $selectResult->fetch_assoc()){
            array_push($cat,$result);
         }
        
        return $cat;
                }
      }

      public function select_filter($link,$table,$tablee,$ASC)
      {
        $sql = "SELECT * FROM $table ORDER BY $tablee $ASC";
                        $selectResult = $link->query($sql);
            if ($selectResult->num_rows > 0) {
         $cat = array();
         while($result = $selectResult->fetch_assoc()){
            array_push($cat,$result);
         }
        
        return $cat;
                }
      }

      public function select_where($link,$catigories,$table,$ASC)
      {
            $sql = "SELECT * FROM `catigories` WHERE name_catigories = '$catigories'";
                            $selectResult = $link->query($sql);
                            $result_id = $selectResult->fetch_assoc();
                            $id = $result_id['id'];


      $sql = "SELECT * FROM `products` WHERE catigorie = '$id' ORDER BY $table $ASC";
                        $selectResult = $link->query($sql);
            if ($selectResult->num_rows > 0) {
         $cat = array();
         while($result = $selectResult->fetch_assoc()){
            array_push($cat,$result);
         }
        
        return $cat;
    			}
     }
}

?>