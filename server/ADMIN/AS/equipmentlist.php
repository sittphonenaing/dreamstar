<?php include('../../../include/connect.php');
?>
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
     <script src="../../../../assets/jquery.min.js"></script>
  <script src="../../../../assets/bootstrap.min.js"></script>

    <link href="css/bootstrap-theme.min.css" rel="stylesheet">



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



        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>

                      <ol class="breadcrumb">
  <li class="active"><a href="equipment.php">List</a></li>
</ol>

<table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                             
                <p><a href="add_new_equipment.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Add Equipment</a></p>
              
                                <thead>
                                    <tr>
                    <th>Item Category</th>
                    <th>Item Code</th>
                      <th>Name</th>
                       <th>Brand</th>
                    <th>User</th>
                    <th>Price</th>
                    <th>Status</th>
                    <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
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
          
           <?php
           $get_id=$_GET['id']; 
               $query = mysql_query("select * from tb_equipment where item_category='$get_id'") or die(mysql_error());
                        while ($row = mysql_fetch_array($query)) {
                        $item_id = $row['item_id'];       
            ?>
      <tr>
              <td><?php $cat=$row['item_category'];
              $query99 = mysql_query("select * from item_category where category_id='$cat'");
              $row00 = mysql_fetch_array($query99);
              echo $row00['item_name'];
              ?></td>
              <td><?php echo $row['item_code'];?></td>
              <td><?php echo $row['item_name'];?></td>
              <td><?php echo $row['brand_name'];?></td>
              <td><?php 
              $emp=$row['employee_id'];
              echo $emp;
              ?></td>
              <td><?php  $price=$row['price'];
              echo 'PHP'.formatMoney($price,true);?></td>
              <td><?php echo $row['status'];?></td>
              <td>
         <a rel="tooltip"  title="Delete" id="<?php echo $id; ?>" onclick="return confirm('Are you sure you want to delete?')" href="delete_equipment.php?id=<?php echo $item_id;?>" data-toggle="modal"    class="btn btn-danger"><i class="icon-trash icon-large"></i></a>
         <a  rel="tooltip"  title="Edit" id="e<?php echo $id; ?>" href="edit_equipment.php?id=<?php echo $item_id;?>" class="btn btn-success"><i class="icon-pencil icon-large"></i></a>
          <a  rel="tooltip"  title="View" id="v<?php echo $id; ?>"  href="view_equipment.php?id=<?php echo $item_id;?>" class="btn btn-info"><i class="icon-list icon-large"></i></a>
         </td>
          
      </tr>
      <?php } ?>
                                </tbody>
                            </table>

          
        </div><!--/span-->
       
        	<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
		<div class="list-group">
		<a href="index.php" class="list-group-item ">Home</a> 
            <a href="asset.php" class="list-group-item">Products</a>
            <a href="reports.php" class="list-group-item">Product Report</a>
            <a href="reports1.php" class="list-group-item">Product List</a>
            __________________________________
            <a href="equipment.php" class="list-group-item active">Equipment</a>
            <a href="careoff_report.php" class="list-group-item">Assigned Equipment</a>
            <a href="fixedasset_report.php" class="list-group-item">Fixed Asset Report</a>
            <a href="configuration.php" class="list-group-item">Equipment Category</a>
          </div>
          </div>

        <!--end of sidebar-->


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
