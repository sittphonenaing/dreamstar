<?php
include('../../../include/connect.php');
include('sessions.php');
if (isset($_POST['delete'])){
    
    if(empty($_POST['selector'])){
      ?>  
      
      <script type="text/javascript">
        alert("No Data to delete! Check some boxes to delete the Data. ");
          window.location= "print_asset_archive.php";
</script>

        <?php
    }else{
       $id=$_POST['selector'];

$N = count($id);
for($i=0; $i < $N; $i++)
{
     $result1 = mysql_query("select * from tb_user where userID=$userID");
              $row1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail='Archive Product ID '.$id[$i] .' was permanently deleted!';
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Deleted','$detail')");
           
	$result = mysql_query("DELETE FROM tb_products where productID='$id[$i]'");
    mysql_query("DELETE FROM tb_productreport where productID='$id[$i]'");
} 

?>
<script type="text/javascript">
        alert("Deleted successfully");
          window.location= "print_asset_archive.php";
</script>
<?php

    }
}
?>