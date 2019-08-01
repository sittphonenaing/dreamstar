<?php
include('../../../include/connect.php');

$get_id=$_GET['id'];

mysql_query("delete from item_category where category_id='$get_id'")or die(mysql_error());
?>

<script type="text/javascript">
        alert("Deleted successfully");
          window.location= "configuration.php";
</script>
