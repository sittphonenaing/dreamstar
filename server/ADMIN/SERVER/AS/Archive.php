<?php  
include('../../../include/connect.php');    
include('../sessions.php');       
       $id=$_GET['id'];
       $query=mysql_query("select * from tb_products where productID=$id");
        $row=mysql_fetch_array($query);
        
        $name=$row['name'];
        $price=$row['price'];
        $image=$row['image'];
        $details=$row['details'];
           $quantity=$row['quantity'];
       $date=$row['date_created']; 
         
  
    mysql_query("insert into asset_archive(productID,name,price,image,details,quantity,date_created)values('$id','$name','$price','$image','$details','$quantity','$date')") or die (mysql_error());
      

   
        ?>
          <script type="text/javascript">
        alert("The product is now saved in Recent Activity.");
          window.location= "asset.php";
</script>
       <?php
       $result1 = mysql_query("select * from tb_user where userID=$userID");
              $row1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail='ProductID '.$id .' Name= '.$name.' was move to Archive';
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Move','$detail')");
       
	$result = mysql_query("DELETE FROM tb_products where productID='$id'");
?>
   