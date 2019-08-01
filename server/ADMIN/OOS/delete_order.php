<?php
include('../../include/connect.php');

$get_id=$_GET['id'];

mysql_query("delete from orders where OrderID='$get_id'")or die(mysql_error());
mysql_query("delete from order_details where OrderID='$get_id'")or die(mysql_error());
mysql_query("delete from notif where orderID='$get_id'")or die(mysql_error())
?>

<script type="text/javascript">
        alert("Deleted successfully");
          window.location= "orders.php";
</script>
