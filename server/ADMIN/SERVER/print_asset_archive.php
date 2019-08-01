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
 <B>Asset Archive Recent Activity</B> </div>
 <br/>
<form method="POST" action="delete_asset_archive.php">
 <input type="submit" value="DELETE" name="delete" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete?')" />
 <br/>
<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%">
   <?php

              function formatMoney($number, $fractional=false) {
                if ($fractional) {
                  $number = sprintf('%.2f', $number);
                }
                while (true) {
                  $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
                  if ($replaced != $number) {
                    $number = $replaced;
                  } else {
                    break;
                  }
                }
                return $number;
              } 
        ?>
        
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
          <th><div align=""> <input type="checkbox" onClick="toggle(this)"> Product ID</div></th>
              <th><div align="center">Product Name</div></th>
               <th><div align="center">Price</div></th>
                <th><div align="center">Quantity</div></th>
                <th><div align="center">Date Created</div></th>
                
                
            </tr>
          </thead>
          <tbody>
      <?php
        $user_query=mysql_query("select * from asset_archive")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['productID'];  ?>
                  <tr class="del<?php echo $id ?>">
                  <td><input name="selector[]" type="checkbox" value="<?php echo $id; ?>">  <?php echo $row['productID']; ?></td>                            
                                    <td><?php echo $row['name']; ?></td>
                                     <td ><?php echo 'Php '.formatMoney($row['price'],2); ?> </td> 
                                       <td ><?php echo $row['quantity']; ?> </td>
                                       <td><?php echo $row['date_created']; ?></td>
               </tr>
                  <?php  }  ?>
          </tbody>
</table></form>
                 