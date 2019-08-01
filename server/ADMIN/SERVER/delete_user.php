<?php
include('../../include/connect.php');

$get_id=$_GET['id'];

mysql_query("delete from tb_user where userID='$get_id'")or die(mysql_error());
?>

<script type="text/javascript">
        alert("Deleted successfully");
          window.location= "user.php";
</script>
