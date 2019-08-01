<header id="header">
<div class="row">
<div class="span11">
	<a href="user_index.php"><img src="img/dreamstar.gif" width="355" height="101" alt=""/></a>
<div class="pull-right"> <br/>
	<a title="Click to view your cart!" href="product_summary.php"> <span class="btn btn-mini btn-warning"> 
		<i class="icon-shopping-cart icon-white"></i> [ <?php



   $count_query = mysql_query("select * from order_details where CustomerID='$ses_id' and OrderID=''") or die(mysql_error());
     $count = mysql_num_rows($count_query);
                    echo $count;
                    ?>] </span> </a>
	<a title="Click to view your cart!" href="product_summary.php">
		<span class="btn btn-mini active">$<?php
	
				  $result5 = mysql_query("SELECT sum(total) FROM order_details WHERE CustomerID='$ses_id' and OrderID=''");
					while($row5 = mysql_fetch_array($result5))
					  { 

						echo formatMoney($row5['sum(total)'],2);
					  }
				  ?></span></a>
</div>
</div>
</div>
<div class="clr"></div>
</header>