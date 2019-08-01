<?php

include('../../include/connect.php');

?>
<style type="text/css">
<!--

a:link {
}
a:visited {
  text-decoration: none;
  color: #000000;
}
a:hover {
  text-decoration: none;
  color: #000000;
}
a:active {
  text-decoration: none;
  color: #000000;
}
-->
</style>

<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%">
<thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">
            <th><div align="center">ID</div></th>
          <th><div align="center">DATABASE NAME</div></th>
          <th><div align="center">DATE</div></th>
          <th><div align="center">DOWNLOAD</div></th>
            </tr>
          </thead>
          
          <?php
        $user_query=mysql_query("select * from backup_dbname")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  ?>
                  <tr>
                  <td><?php echo $row['ID']; ?></td>                            
                  <td><?php echo $row['Name']; ?></td>
                  <td><?php echo $row['Date']; ?></td>
                  <td><form action="Backup_Data/download1.php" method="post">
                  <input type="hidden" name="download" value="<?php echo $row['Name']; ?>" />&nbsp;
                  <center><input type="submit" value="Download" /></center>
                  </form></td>
                                   
         
               </tr>
                  <?php  }  ?>
          </tbody>
</table>
                 