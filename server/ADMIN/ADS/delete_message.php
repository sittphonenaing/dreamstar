<?php
include('../../../include/connect.php');
include('../SERVER/sessions.php'); 
$id=$_GET['id'];

$result= mysql_query("select * from message where ID='$id'");
$row=mysql_fetch_array($result);
$result1 = mysql_query("select * from tb_user where userID=$userID");
              $row1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail='CustomerID '.$row['CustomerID'].' Name '.$row['Name'] .' Message was deleted!';
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Deleted','$detail')");
       
       
mysql_query("delete from message where ID='$id'");

?>
<script>
window.location="messages_box.php";
</script>