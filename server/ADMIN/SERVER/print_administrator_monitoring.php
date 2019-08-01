<?php

include('../../include/connect.php');
include('sessions.php');
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

           <div align="center" style="margin-top:40px; height:80px;"><img src="../../../img/dreamstar.gif" width="355" height="101"><br /> 
 <B>Administrator Monitoring Login and Logout</B> </div>
 <br/>
 
 

 <br/> <br/>
<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%">
   <?php

              
        ?>
          <thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">
          <th><div align="center">Administrator ID</div></th>
              <th><div align="center">User</div></th>
               <th><div align="center">Name</div></th>
               <th><div align="center">Time Log in</div></th>
                <th><div align="center">Time Log out</div></th>
                
            </tr>
          </thead>
          <tbody>
      <?php
        $user_query=mysql_query("select * from loginout_serverhistory")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['AdminID'];  ?>
                  <tr class="del<?php echo $id ?>">
                  <td><?php echo $row['AdminID']; ?></td> 
                  <td><?php echo $row['User']; ?></td>  
                  <td><?php echo $row['Name']; ?></td>
                  <td><?php echo $row['Time_in']; ?></td>
                  <td><?php echo $row['Time_out']; ?></td>                         
                
         
               </tr>
                  <?php  }  ?>
          </tbody>
</table>
                 