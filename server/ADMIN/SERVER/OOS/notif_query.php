<?php

include('../../../include/connect.php');

$id=$_GET['id'];

mysql_query("update notif set status='Seen' where orderID='$id'")or die(mysql_error());

      
      ?>