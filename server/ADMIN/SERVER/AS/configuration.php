<?php include('../../../include/connect.php');?>
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

<table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                             
                <p><a href="add_new_category.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Add Category</a></p>
              
                                <thead>
                                    <tr>
                                    <th>Category Type</th>
                                      <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                 
           <?php
               $query = mysql_query("select * from item_category") or die(mysql_error());
                        while ($row = mysql_fetch_array($query)) {
            
            ?>
      <tr>
              <td><?php echo $row['item_name'];?></td>
             <td>
                    <a rel="tooltip"  title="Delete" id="<?php echo $id; ?>" onclick="return confirm('Are you sure you want to delete?')" href="delete_category.php?id=<?php echo $row['category_id'];?>" data-toggle="modal"    class="btn btn-danger"><i class="icon-trash icon-large"></i></a>
                    <a  rel="tooltip"  title="Edit" id="e<?php echo $id; ?>" href="edit_category.php?id=<?php echo $row['category_id'];?>" class="btn btn-success"><i class="icon-pencil icon-large"></i></a>
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
            <a href="equipment.php" class="list-group-item">Equipment</a>
            <a href="careoff_report.php" class="list-group-item">Assigned Equipment</a>
            <a href="fixedasset_report.php" class="list-group-item">Fixed Asset Report</a>
            <a href="configuration.php" class="list-group-item active">Equipment Category</a>
          </div>
          </div>
        </div><!--/span-->

        <!--end of sidebar-->


      </div><!--/row-->


  
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
