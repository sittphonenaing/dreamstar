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
     <script>
function confirmDelete(delUrl) {
  if (confirm("Are you sure you want to update product status?")) {
   document.location = 'update_stat.php';
  }
}
</script>

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

<table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                             
            
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Name</th>    
                                        <th>Order Date</th>
                                        <th>Total</th>
                                        <th>Status</th>
                                        <th>Actions</th> 
                                    </tr>
                                </thead>
                                <tbody>
       <?php  $user_query=mysql_query("select * from orders where status like '%Pending%' order by OrderID")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['customerID']; 
          $query2=mysql_query("select * from customers where CustomerID='$id'")or die(mysql_error());
          $row2=mysql_fetch_array($query2);
             ?>
                  <tr class="del<?php echo $id ?>">
                  <td><?php echo $row['OrderID']; ?></td>                            
                                    <td><?php echo $row2['Firstname'].' '.$row2['Lastname']; ?></td>
                                     <td ><?php echo date("F j, Y", strtotime($row['orderdate'])); ?> </td> 
                                      <td ><?php echo formatMoney($row['total']); ?> </td> 
                                 <td ><?php echo formatMoney($row['status']); ?> </td> 
                               
                                    <td>
                                       <a rel="tooltip"  title="Confirmed" id="<?php echo $id; ?>" onclick="return confirm('Are you sure you want to Confirmed?')" href="confirm_order.php?id=<?php echo $row['OrderID'];?>" data-toggle="modal"    class="btn btn-success">Confirm</a>
                    <a rel="tooltip"  title="Delete" id="<?php echo $id; ?>" onclick="return confirm('Are you sure you want to delete?')" href="delete_order.php?id=<?php echo $row['OrderID'];?>" data-toggle="modal"    class="btn btn-danger">Delete</a>
                    <a  rel="tooltip"  title="View" id="v<?php echo $id; ?>"  href="view_order.php?id=<?php echo $row['OrderID'];?>" class="btn btn-info">View</a>
                                    </td>
                  
                                    </tr>
                  <?php  }  ?>
                           
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
