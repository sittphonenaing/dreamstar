<?php
include('../../include/connect.php');
include('../SERVER/sessions.php');

$get_id=$_GET['id'];
$ann=mysql_query("select * from tb_announcement where announcementID=$get_id");
$row=mysql_fetch_array($ann);
$name=$row['name'];

$result1 = mysql_query("select * from tb_user where userID=$userID");
              $row1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail="ProductID= $get_id, $name was permanently Deleted!";
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Deleted','$detail')");
mysql_query("delete from tb_announcement where announcementID='$get_id'")or die(mysql_error());
?>

<script type="text/javascript">
        alert("Deleted successfully");
          window.location= "announcement.php";
</script>
