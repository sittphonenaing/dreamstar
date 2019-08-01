<?php include('../../../include/connect.php');
error_reporting(E_ALL ^ E_NOTICE);
 ?>
<style type="text/css">
<!--

a:link {
  color: #000000;
  text-decoration: none;
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
 <B>Ordered Products</B> 
 <?php
				$a=$_POST['from'];
                $b=$_POST['to'];
 ?>
<br/> From: <?php echo $a;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To: <?php echo  $b; ?></div>
 <br/>
  <br/>
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

               <th><div align="center">Order ID</div></th>
               <th><div align="center">Name of Buyer</div></th>
               <th><div align="center">Order Date</div></th>
               <th><div align="center">Date Paid</div></th>
               <th><div align="center">Status</div></th>
               <th><div align="center">Tr. #</div></th>
               <th><div align="center">No. Item(s)</div></th>
                <th><div align="center">Total</div></th>
				<th><div align="center">Delivery</div></th>

            </tr>
          </thead>
          <tbody>
      <?php

    $a=$_POST['from'];
                $b=$_POST['to'];
                

          $query = mysql_query("select * from orders where orderdate BETWEEN '$a' AND '$b'") ;                
            while($row = mysql_fetch_array($query))
              {
               
                $oid=$row['OrderID'];
				$cid=$row['customerID'];
                
                  $query2 = mysql_query("select * from orders where OrderID='$oid'") or die(mysql_error());
                  $row2 = mysql_fetch_array($query2);
                  
                   $count_query = mysql_query("select * from order_details where OrderID='$oid'") or die(mysql_error());
     $count = mysql_num_rows($count_query);
                   
                  
                  $query3 = mysql_query("select * from customers where CustomerID='$cid'") or die(mysql_error());
                  $row3 = mysql_fetch_array($query3);
                  $name=$row3['Firstname'].' '.$row3['Lastname'];
                  echo '<tr>';
					 echo '<td><div align="center">'.$row2['OrderID'].'</div></td>';
					 echo '<td><div align="center">'.$name.'</div></td>';
					 echo '<td><div align="center">'.$row2['orderdate'].'</div></td>';
                     echo '<td><div align="center">'.$row2['Date_paid'].'</div></td>';
                      echo '<td><div align="center">'.$row['status'].'</div></td>';
                     echo '<td><div align="center">'.$row2['Transaction_code'].'</div></td>';
                     echo '<td><div align="center">'.$count.'</div></td>';
				     echo '<td><div align="center">'.formatMoney($row['total'],2).'$'.'</div></td>';
					 
					
					 echo '<td><div align="center">'.$row2['deliverystatus'].'</div></td>';

                  echo '</tr>';
                  }
                
      ?>
         
          
          </tbody>
</table>
                 