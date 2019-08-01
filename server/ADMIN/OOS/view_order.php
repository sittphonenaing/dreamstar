<?php include('../../include/connect.php');
include('notif_query.php');
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
              }  ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../../img/aalogo.jpg">

    <title>DreamStar Online Mobile Store</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="css/font-awesome.css" rel="stylesheet" media="screen">

   <link href="css/bootstrap.css" rel="stylesheet" media="screen">


    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
      <?php include('header.php');?>


        </div><!-- /.nav-collapse -->

      </div><!-- /.container -->
    </div><!-- /.navbar -->

    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>

<ol class="breadcrumb">
    <li><a href="orders.php">View All</a></li>
  <li><a href="pending_order.php">Pending</a></li>
  <li><a href="confirmed_order.php">Confirmed</a></li>
</ol>
<?php 
$id=$_GET['id'];
$query=mysql_query("select * from orders where OrderID='$id'") or die (mysql_error());
$row=mysql_fetch_array($query);
?>
<label>Order No: <?php echo $row['OrderID']; ?></label><br/>
<label>Order Date: <?php echo date("F j, Y", strtotime($row['orderdate']));  ?></label><br/>
  <table class="table table-bordered">
              <thead>
                <tr>
                  <th>Product</th>
                  <th>Description</th>
                  <th  width="100">Quantity</th>
                  <th  width="80">Price</th>
                  <th width="80">Total</th>
        </tr>
              </thead>
              <tbody>
                <?php 
                $id=$_GET['id'];
$query=mysql_query("select * from order_details where Orderid='$id'") or die (mysql_error());
while($row=mysql_fetch_array($query)){
$count=mysql_num_rows($query);
$pid=$row['ProductID'];
$query2=mysql_query("select * from tb_products where productID='$pid'") or die (mysql_error());
$row2=mysql_fetch_array($query2);

?>
        <tr>


                  <td> <img width="60" src="../SERVER/AS/<?php echo $row2['image'];?>" alt=""/></td>
                  <td><b><?php echo $row2['name'];?></b><br/><br/>
                    <?php $string=$row2['details'];

$string = strip_tags($string);

if (strlen($string) > 100) {

    // truncate string
    $stringCut = substr($string, 0, 100);

    // make sure it ends in a word so assassinate doesn't become ass...
    $string = substr($stringCut, 0, strrpos($stringCut, ' ')).'... '; 
}
echo $string;

                    ?></td>
          <td><?php  echo $row['Quantity']; ?></td>
                  <td><?php  echo formatMoney($row2['price']); ?></td>
                  <td><?php echo formatMoney($row['Total']);?></td>


    <?php } ?>

                </tr>
        
              
         <tr>
       
                  <td colspan="4" align="right"><strong>TOTAL=</strong> </td>
                  <td> <strong>
                     <?php
                     $id=$_GET['id'];
          $result5 = mysql_query("SELECT sum(total) FROM order_details WHERE orderid='$id'");
          while($row5 = mysql_fetch_array($result5))
            { 
            echo "₱".formatMoney($row5['sum(total)']);
            }
          ?>
                    </strong></td>
                </tr>
        </tbody>
            </table>

          
        </div><!--/span-->

        
        


      <hr>

      <?php include('footer.php');?>

    </div><!--/.container-->



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="offcanvas.js"></script>
  </body>
</html>
