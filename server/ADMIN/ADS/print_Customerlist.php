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

                    <div align="center" style="margin-top:40px; height:80px;"><img src="../../../img/AA2000.jpg"><br /> 
 <B>Customer List</B> </div>
 <br/>
 
 

 <br/> <br/>
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
          <th><div align="center">Customer ID</div></th>
              <th><div align="center">Name</div></th>
                <th><div align="center">Gender</div></th>
                <th><div align="center">Address</div></th>
                <th><div align="center">City</div></th>
                <th><div align="center">Date created</div></th>
                
            </tr>
          </thead>
          <tbody>
      <?php
        $user_query=mysql_query("select * from customers")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['CustomerID'];  ?>
                  <tr class="del<?php echo $id ?>">
                  <td><?php echo $row['CustomerID']; ?></td>                            
                                    <td><?php echo $row['Firstname'].' '. $row['Middle_name'].' '.$row['Lastname']; ?></td>
                                      <td ><?php echo $row['Gender']; ?> </td>
                                       <td ><?php echo $row['Address']; ?> </td>
                                       <td ><?php echo $row['City']; ?> </td>
                                       <td><?php echo $row['Date_created']; ?></td>
         
               </tr>
                  <?php  }  ?>
          </tbody>
</table>
                 