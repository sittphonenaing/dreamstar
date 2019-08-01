<?php

include('include/connect.php');



$quer=mysql_query("select * from tb_announcement")or die(mysql_error());
while ($row = mysql_fetch_array($quer)){
$id=$row['announcementID'];
 mysql_query("update tb_announcement set status='Seen' where announcementID='$id'")or die(mysql_error());

      }
      ?>