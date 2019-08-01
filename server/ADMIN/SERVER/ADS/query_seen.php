<?php

include('../../../include/connect.php');


$mes=$_POST['message'];
 mysql_query("update message set Status='Seen' where ID='$mes'")or die(mysql_error());

      
      ?>