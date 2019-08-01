<?php include('../../../include/connect.php') ?>
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

<script>
function myFunction()
{
        var printButton = document.getElementById("printpagebutton");
        printButton.style.visibility = 'hidden';
        printButton.style.visibility = 'hidden';
        window.print()
}

</script>
    
<!-- sdas -->


  
   
<a href="" id="printpagebutton" onclick="myFunction()">Print</a>

                    <div align="center" style="margin-top:40px; height:80px;"><img src=""><br /> 
 <B>ADMINISTRATOR LIST</B> </div>
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
          <thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">
            <th><div align="center">USER  ID</div></th>
              <th><div align="center">USER TYPE</div></th>
              <th><div align="center">FULL NAME</div></th>
               <th><div align="center">USERNAME</div></th>

                
            </tr>
          </thead>
          <tbody>
      <?php
         $user_query=mysql_query("select * from tb_user")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['userID'];
                  $id2=$row['utype'];
                  $query2=mysql_query("select * from user_type where typeID='$id2'")or die(mysql_error());
          $row2=mysql_fetch_array($query2);
                  
                    ?>
                  <tr class="del<?php echo $id ?>">
                  <td><font color="white"><?php echo $id; ?></font></td> 
                  <td><font color="white"><?php echo $row2['user_type']; ?></td>                             
                  <td ><font color="white"><?php echo $row['Employee']; ?> </td> 
                  <td><font color="white"><?php echo $row['username']; ?></td> 
                                  
         
               </tr>
                  <?php  }  ?>
          </tbody>
</table>
                 