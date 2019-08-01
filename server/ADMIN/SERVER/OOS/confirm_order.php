<?php
include('../../../include/connect.php');

$get_id=$_GET['id'];

mysql_query("update orders set status='Confirmed' where OrderID='$get_id'")or die(mysql_error());

date_default_timezone_set('Asia/Manila');
$new =date('F j, Y g:i:a  ');
mysql_query("update orders set Date_paid='$new' where OrderID='$get_id'")or die(mysql_error());
?>

<script type="text/javascript">
alert("Updated successfully");
          window.location= "orders.php";
</script>
