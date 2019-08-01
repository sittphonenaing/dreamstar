<?php include('../../../include/connect.php');
error_reporting(E_ALL ^ E_NOTICE); ?>
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

                    <div align="center" style="margin-top:40px; height:80px;"><img src="../../../../img/dreamstar.gif" width="355" height="101"><br /> 
 <B>Products Report</B> </div>
  <?php
				$a=$_POST['from'];
                $b=$_POST['to'];
 ?>
<br/><br/> <center>From: <?php echo $a;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To: <?php echo $b; ?></center>
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
          <thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">
              <th><div align="center">Product ID</div></th>
              <th><div align="center">Product Name</div></th>
               <th><div align="center">Price</div></th>
               <th><div align="center"><font size="2">Beginning Qty</font></div></th>
               <th><div align="center"><font size="2">Product Created</font></div></th>
               <th><div align="center"><font size="2">Updated Qty</font></div></th>
               <th><div align="center"><font size="2">Sold Qty</font></div></th>
               <th><div align="center"><font size="2">Total Qty</font></div></th>
               <th><div align="center"><font size="2">Date Order</font></div></th>
               

                
            </tr>
          </thead>
          <tbody>
      <?php
       $a=$_POST['from'];
                $b=$_POST['to'];
                

          $query = mysql_query("select * from orders where orderdate BETWEEN '$a' AND '$b'") ;                
            while($row = mysql_fetch_array($query)){
               
                $oid=$row['OrderID'];
                $orderdate=$row['orderdate'];
                $count_query = mysql_query("select * from order_details where OrderID='$oid'") or die(mysql_error());
     while($row4=mysql_fetch_array($count_query)){
     $id=$row4['ProductID'];
     $soldproduct=$row4['Quantity'];
     
     $product=mysql_query("select * from tb_products where productID='$id'");
     $row5=mysql_fetch_array($product);
     
     $productreport=mysql_query("select * from tb_productreport where ProductID='$id'");
     $row3=mysql_fetch_array($productreport);
     
      ?>
              <tr>
                 <td><?php echo $id;?></td>
                 <td><?php echo $row5['name']; ?> </td>
                 <td><?php echo 'P'.formatMoney($row5['price'],2);?></td>
                 <td><?php echo $row3['Beg_qty']; ?></td>
                  <td><?php echo $row5['date_created']; ?></td>
                  <td><?php echo $row3['updated_qty']; ?></td>
                 <td><?php echo $soldproduct;?></td>
                 <td><?php echo $row4['Total_qty'];?></td>
                 <td><?php echo $orderdate; ?></td>
                
                                  
         
               </tr>
                  <?php } }  ?>
          </tbody>
</table>
                 