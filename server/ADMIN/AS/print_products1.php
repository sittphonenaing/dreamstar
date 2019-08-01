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
 <B>Products Record</B> </div>
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
              <th><div align="center">Product ID</div></th>
              <th><div align="center">Product Name</div></th>
               <th><div align="center">Price</div></th>
               <th><div align="center">Quantity</div></th>
              <th><div align="center">Date Created</div></th>
                
            </tr>
          </thead>
          <tbody>
      <?php
         $user_query=mysql_query("select * from tb_products")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['productID'];  ?>
                  <tr class="del<?php echo $id ?>">
                  <td><?php echo $id; ?></td> 
                  <td><?php echo $row['name']; ?></td>                            
                                    <td width="80">Php<?php echo formatMoney($row['price'],2); ?></td>
                                     <td ><?php echo $row['quantity']; ?> </td> 
                                     <td ><?php echo $row['date_created']; ?> </td> 
                                   
         
               </tr>
                  <?php  }  ?>
          </tbody>
</table>
                 