<?php
include('../../../include/connect.php');

$get_id=$_GET['id'];

mysql_query("update orders set deliverystatus='Delivered' where OrderID='$get_id'")or die(mysql_error());

?>

<script type="text/javascript">
        
          window.location= "orders.php";
</script>
