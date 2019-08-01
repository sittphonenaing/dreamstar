<?php include('../../../include/connect.php');
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
    <link rel="shortcut icon" href="../../../../img/aalogo.jpg">

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

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>

  <table class="table table-bordered">
              <thead>
                <tr>
                  <th>Order ID</th>
                  <th>Name</th>
                  <th>Date</th>
                  <th>Action</th>
        </tr>
              </thead>
              <tbody>
               
<?php 

$query=mysql_query("select * from notif where status='' order by orderID asc") or die (mysql_error());
while($row=mysql_fetch_array($query)){
  $id=$row['orderID'];
  $query1=mysql_query("select * from order_details where orderid='$id'") or die (mysql_error());
$row1=mysql_fetch_array($query1);
$cid=$row1['CustomerID'];
  $query2=mysql_query("select * from customers where CustomerID='$cid'") or die (mysql_error());
$row2=mysql_fetch_array($query2);
?>
        <tr>


                  <td><?php echo $row['orderID'];?></td> 
                  <td><?php echo $row2['Firstname'].' '.$row2['Lastname'];?></td> 
                  <td><?php echo  date("F j, Y", strtotime($row['date_ordered']));  ?></td> 
                  <td> 
           <a rel="tooltip"  title="View"  href="view_order.php?id=<?php echo $row['orderID'];?>" data-toggle="modal"    class="btn btn-default">View</a>
  </td> 
                </tr>
                <?php } ?>
        </tbody>
            </table>

          
        </div><!--/span-->

        
      </div><!--/row-->

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
