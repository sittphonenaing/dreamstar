<?php
include('../../include/connect.php');

$get_id=$_GET['id'];

mysql_query("update orders set status='Confirmed' where OrderID='$get_id'")or die(mysql_error());

?>

<script type="text/javascript">
alert("Updated successfully");
          window.location= "orders.php";
</script>
