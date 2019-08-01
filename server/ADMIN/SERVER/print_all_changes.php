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

           <div align="center" style="margin-top:40px; height:80px;"><img src="../../../img/dreamstar.gif" width="355" height="101"><br /> 
 <B>All work changes</B> </div>
 <br/>
 
 

 <br/> <br/>
<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%">
   <?php

        ?>
          <thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">
          <th><div align="center">Administrator ID</div></th>
              <th><div align="center">User</div></th>
               <th><div align="center">Date and Time</div></th>
               <th><div align="center">Action</div></th>
                <th><div align="center">Detail</div></th>
            </tr>
          </thead>
          <tbody>
      <?php
        $user_query=mysql_query("select * from audit_trail")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['ID'];  ?>
                  <tr class="del<?php echo $id ?>">
                                    <td><?php echo $id; ?></td>                            
                                    <td><?php echo $row['User']; ?></td>
                                     <td ><?php echo $row['Date_time']; ?> </td> 
                                      <td ><?php echo $row['Outcome']; ?> </td> 
                                      <td ><?php echo $row['Detail']; ?> </td>
                                    
         
               </tr>
                  <?php  }  ?>
          </tbody>
</table>
                 