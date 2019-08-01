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
    <link href="css/bootstrap.min.css" rel="stylesheet">
           <div align="center" style="margin-top:40px; height:80px;"><img src="../../../img/dreamstar.gif" width="355" height="101"><br /> 
 <B>Customer Archive Recent Activity</B> </div>
 <br/>
 <form method="POST" action="delete_customer_archive.php">
 <input type="submit" value="DELETE" name="delete" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete?')" />
 <br/>
<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%">
               <script language="JavaScript">
function toggle(source) {
checkboxes = document.getElementsByName('selector[]');
for(var i=0, n=checkboxes.length;i<n;i++) {
checkboxes[i].checked = source.checked;
}
}
</script> 
          <thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">
          <th><div align="center"><input type="checkbox" onClick="toggle(this)"> Customer ID</div></th>
              <th><div align="center">First Name</div></th>
               <th><div align="center">Middle Name</div></th>
               <th><div align="center">Last Name</div></th>
                <th><div align="center">Gender</div></th>
                <th><div align="center">Address</div></th>
                <th><div align="center">City</div></th>
                <th><div align="center">Date created</div></th>
                
            </tr>
          </thead>
          <tbody>
      <?php
        $user_query=mysql_query("select * from customer_archive")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['CustomerID'];  ?>
                  <tr class="del<?php echo $id ?>">
                  <td><input name="selector[]" type="checkbox" value="<?php echo $id; ?>"> <?php echo $row['CustomerID']; ?></td>                            
                                    <td><?php echo $row['Firstname']; ?></td>
                                     <td ><?php echo $row['Middle_name']; ?> </td> 
                                      <td ><?php echo $row['Lastname']; ?> </td> 
                                      <td ><?php echo $row['Gender']; ?> </td>
                                       <td ><?php echo $row['Address']; ?> </td>
                                       <td ><?php echo $row['City']; ?> </td>
                                       <td><?php echo $row['Date_created']; ?></td>
         
               </tr>
                  <?php  }  ?>
          </tbody>
</table>
                 </form>