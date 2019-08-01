<?php include('include/connect.php');
include('include/session.php');
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
  <head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="img/aalogo.jpg">

    <title>DreamStar Online Mobile Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<!-- Less styles  
	<link rel="stylesheet/less" type="text/css" href="less/bootsshop.less">
	<script src="less.js" type="text/javascript"></script>
	 -->
	 
    <!-- Le styles  -->
      <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="assets/css/docs.css" rel="stylesheet"/>
	 
    <link href="assets/style.css" rel="stylesheet"/>
	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>

    <script type='text/javascript'>
function numbers(){

  //var CheckPassword = /^[A-Za-z]\w{7,14}$/; - numbers and characters and uppercase
  var letterexp = /^[a-zA-Z]+$/;
  var quanti = 32; 
  if(document.getElementById('quantity').value.match(letterexp)){
    alert('Please input numbers only');
    document.getElementById('quantity').value='';
  }
  
}


</script>

     <script>
function confirmDelete(delUrl) {
  if (confirm("Are you sure you want to update product status?")) {
   document.location = 'update_stat.php';
  }
}
</script>

    <script src='//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
  <script src="js/incrementing.js"></script>
	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
     <style>
   body {
    background-image: url("background1.JPG");
    background-repeat: no-repeat;
}
</style>
    <!-- Le fav and touch icons -->
 </head>
<body>
  <!-- Navbar
    ================================================== -->
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
					<a id="logoM" href="user_index.php"><img src="" alt=""/></a>
                  <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					 <li class=""><a href="user_index.php"><i class="icon-home icon-large"></i> Home</a></li>
					  <li class=""><a href="user_products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
					  <li class=""><a href="user_contact.php"><i class="icon-signal"></i> Contact Us</a></li>
                      <li class=""><a href="user_aboutus.php"><i class="icon-flag"></i> About Us</a></li>
                    <li class=""><a href="user_order.php"><i class="icon-shopping-cart"></i> Ordered Products</a></li>
               <li class=""><a href="Email.php"><i class="icon-envelope"></i> Email</a></li>
					</ul>
                   
                    <ul class="nav pull-right">
				      <li>
         	<a href="user_account2.php"><?php $query = mysql_query("select * from customers where CustomerID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($query);
                $id = $row['CustomerID']; ?> <b>Welcome!  </b> <?php echo $row['Firstname'];?> <?php echo $row['Lastname'];?> <span class="badge badge-info"> <?Php include('announce.php');?></span></a>
          </li>
          <li>
            <a href="logout.php"><i class="icon-off"></i> Log Out</a>
          </li>
					</ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
<!-- ======================================================================================================================== -->	
<div id="mainBody" class="container"><div class="thumbnail">
<?php include ('user_header.php'); ?>
</div><font color="white">
<!-- ==================================================Header End====================================================================== -->
<?php 
$query3=mysql_query("select * from order_details where CustomerID='$ses_id' and orderid=''") or die (mysql_error());
$count2=mysql_num_rows($query3);
?>


<form method="post" action="payment_details.php">


    
  <input type="hidden" id="username" name="id" value="<?php
             $id = mysql_query("select MAX(OrderID) as max_OrderID from orders");                                       
           $row5 = mysql_fetch_array($id);
             echo $row5['max_OrderID'] + 1;                                       
    ?>" class="input-xlarge" required />




  <h3>  SHOPPING CART [ <small><?php echo $count2;?> </small>]

  </h3>  
  <hr class="soft"/>
  
  <table class="table table-bordered">
              <thead>
                <tr>
                  <th>Product</th>
                  <th>Description</th>
                  <th  width="100">Quantity/Update</th>
                  <th  width="80">Price</th>
                  <th width="80">Total</th>
                  <th width="100">Action</th>
        </tr>
              </thead>
              <tbody>
                <?php 
$query=mysql_query("select * from order_details where CustomerID='$ses_id' and Orderid=''") or die (mysql_error());
while($row=mysql_fetch_array($query)){
$count=mysql_num_rows($query);
$pid=$row['ProductID'];

$query2=mysql_query("select * from tb_products where productID='$pid'") or die (mysql_error());
$row2=mysql_fetch_array($query2);

?>
        <tr>


                  <td> <img width="60" src="server/ADMIN/SERVER/AS/<?php echo $row2['image'];?>" alt=""/></td>
                  <td><b><?php echo $row2['name'];?></b><br/><br/>
                    <?php $string=$row2['details'];

$string = strip_tags($string);

if (strlen($string) > 100) {

    // truncate string
    $stringCut = substr($string, 0, 100);

    // make sure it ends in a word so assassinate doesn't become ass...
    $string = substr($stringCut, 0, strrpos($stringCut, ' ')).'... <a href="user_product_details.php?id='.$pid.'"><span style="color:red">Read More</span></a>'; 
}
echo $string;

                    ?></td>
          <td>
      <div class="input-append">
        <center>
        <input class="span1" name="update" style="max-width:34px" placeholder="1" id="french-hens" size="16" type="text" value="<?php echo $row['Quantity'];?>" readonly/>
        </center>
    </div>


          </td>
                  <td><?php  echo formatMoney($row2['price'],2); ?></td>
                  <td><?php echo formatMoney($row['Total'],2);
                            echo'<input type="hidden" name="price" value="'.$row['Total'].'">';
                  ?></td>


                  <td>     
   <a href="delete_order_details.php?id=<?php echo $row['Orderdetailsid'];?>" ><button class="btn btn-danger" onclick="return confirm('Are you sure you want to delete?')" type="button"><i class="icon-remove icon-white"></i></button></a>
     <a href="edit_order_details.php?id=<?php echo $row['Orderdetailsid'];?>" ><button class="btn" type="button"><i class="icon-edit icon-red"></i></button></a>
  

    </td>
    <?php } ?>

                </tr>
        
              
         <tr>
       
                  <td colspan="5" align="right"><strong>TOTAL=</strong> </td>
                  <td class="label label-important"> <strong>
                     <?php
          $result5 = mysql_query("SELECT sum(total) FROM order_details WHERE CustomerID='$ses_id' and OrderID=''");
          while($row5 = mysql_fetch_array($result5))
            { 
            echo "$".formatMoney($row5['sum(total)']);
            echo '<input type="hidden" name="totas" value="'.$row5['sum(total)'].'">';
            }
          ?>
                    </strong></td>
                </tr>
        </tbody>
            </table>
    
    <?php
	if($count2==0 ){
?>

                                         <script type="text/javascript">
                                                alert("Your shopping cart is empty. Add an item");
                                                window.location= "user_products.php";
                                            </script>
   <?php
	}else{
?>
           
        
  <a href="user_products.php" class="btn btn-large"><i class="icon-arrow-left"></i> Continue Shopping </a>
  
  <button type="submit" id="" onclick="return confirm('Are you sure you want to Checkout?')" name="submit" class="btn btn-large pull-right">Check Out <i class="icon-arrow-right"></i></button>
<?php
	}
?>
Shipping Address: <input type="text" name="shipaddress" placeholder="Address for delivery purpose" required/>
City:
<select size="1" name="city">
<option value="Yangon City">Yangon</option>
<option value="Mandalay City">Mandalay</option>
<option value="NayPyiTaw City">NayPyiTaw</option>
<option value="Mawlamyine City">Mawlamyine</option>
<option value="Bagan City">Bagan</option>
<option value="Sittwe City">Sittwe</option>
<option value="Pyay City">Pyay</option>
<option value="Pathein City">Pathein</option>
<option value="Taungyi City">Taungyi</option>
<option value="Dawei City">Dawei</option>
<option value="Myeik City">Myeik</option>
<option value="PyinOoLwin City">PyinOoLwin</option>
<option value="Bago City">Bago</option>
<option value="Hpa-An City">Hpa-An</option>
<option value="Taguig City">Others</option>
</select> 
</form>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div class="thumbnail" id="footerSection">
	<?php include('footer2.php');?>
</body></div></div></font>