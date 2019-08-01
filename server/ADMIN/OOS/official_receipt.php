<?php include('../../include/connect.php');

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
<!DOCTYPE html>
<html lang="en">


    <title>DreamStar Online Mobile Store</title>
	
	<head>
    <link rel="shortcut icon" href="../../../img/aalogo.jpg">
		
		<link href="receipt.css" media="all" rel="stylesheet" type="text/css" />


<script>
function myFunction()
{
        var printButton = document.getElementById("printpagebutton");
        var back = document.getElementById("back");
        printButton.style.visibility = 'hidden';
        back.style.visibility = 'hidden';
        printButton.style.visibility = 'hidden';
        window.print()
}

</script>
	</head>


	<body >
		<a id="back" href="orders.php">Back</a>
        <div id="print">
<a href="" id="printpagebutton" onclick="myFunction()"><B>Print</B></a>
		
		<h3 class="one"><img src="../../../img/AA2000.jpg"  /><br/>Official Receipt</h3>
		<div class="printtitle">
			<hr>
<b> The company is located at Shan Kone St San Chang Tsp,  <Br>
Yangon, Myanmar (Burma)</b><hr></div>
		
		<table>
			<?php
			$id=$_GET['id'];
			$query=mysql_query("select * from orders where OrderID='$id'") or die(mysql_error());
			while($row=mysql_fetch_array($query)){
				$CID=$row['customerID'];
                $tax=$row['tax'];
			$query2=mysql_query("select * from customers where CustomerID='$CID'") or die(mysql_error());
			$row2=mysql_fetch_array($query2);
			?>
			<tr><td>Invoice No.: <u><?php echo $row['Transaction_code'];?></u>
			<tr><td></td></tr>
			<tr><td></td></tr>
			<tr><td>Date: <u><?php echo date("F j, Y", strtotime( $row['orderdate']));?></u></td></tr>
			<tr><td></td></tr>
			<tr><td></td></tr>
			<tr><td>Customer Name: <u><?php echo $row2['Firstname'].' '.$row2['Lastname'];?></u></td></tr>
			<tr><td></td></tr>
			<tr><td></td></tr>
			<tr><td>Address: <u><?php echo $row2['Address'].', '.$row2['City'];?></u></tr></td>
			<tr><td>Shipping Address: <u><?php echo $row['shipping_address']; ?></u></td></tr>
			
            <tr><td></td></tr>
			<?php } ?>
		</table>
		
		<br/><br/>	
		<table border="" color="black">
			<thead>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Total</th>
			</thead>
			<tbody>
			<tr>
				<?php
				$id=$_GET['id'];
			$query3=mysql_query("select * from order_details where OrderID='$id'") or die(mysql_error());
			while($row3=mysql_fetch_array($query3)){
				$pid=$row3['ProductID'];
			$query4=mysql_query("select * from tb_products where ProductID='$pid'") or die(mysql_error());
			$row4=mysql_fetch_array($query4);

				echo '<tr><td><div align="center">'.$row4['name'].'</div></td>';
				echo '<td><div align="center">PHP '.formatMoney($row4['price'],2).'</div></td>';
				echo '<td><div align="center">'.$row3['Quantity'].'</div></td>';
				echo '<td><div align="center">PHP '.formatMoney($row3['Total'],2).'</div></td></tr>';

				} ?>
			</tr>
            <tr>
            <td><div align="center"><strong>GATEWAY</strong></div></td>
            <td><div align="center" ><strong>Shipping Fee</strong></div></td>
            <td><div align="center" ><strong>E-VAT 12%</strong></div></td>
            </tr>
            <tr>
            <td align='center'>PAYPAL</td>
            <td >$ 150.00</td>
            <td ><?php echo 'PHP '.formatMoney($tax,2); ?></td>
            </tr>
            <tr>
            <td colspan="3" style="text-align:right;"><b>TOTAL AMOUNT:</b></td>
				<td style="text-align:center;"> <?php
				$id=$_GET['id'];
          $result5 = mysql_query("SELECT sum(total) FROM order_details WHERE orderid='$id'");
          while($row5 = mysql_fetch_array($result5))
            { 
             $total=150+$row5['sum(total)'];   
            echo '$ '.formatMoney($total,2);
            }
          ?></td>
            </tr>

		</tbody>
		</table>
		<br>
		<br>
		<br/><br/>	
		</div>	

	</body>
</html>
