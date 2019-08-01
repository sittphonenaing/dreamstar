<?php
include('include/connect.php');
$id=$_GET['id'];
 mysql_query("update reply_message set Status='Seen' where Primary_key='$id'")or die(mysql_error());
      ?>