<?php include('../../../include/connect.php'); include('formatMoney.php'); ?>
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

    <link href="css/bootstrap.css" rel="stylesheet">

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
  <li><a href="asset.php">List</a></li>
  <li><a href="#">Critical</a></li>
</ol>

<div class="well">

 
<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">

<?php 
$id=$_GET['id'];
$query=mysql_query("select * from tb_products where productID='$id'") or die (mysql_error());
$row=mysql_fetch_array($query);
?>

 <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Product ID</label>
    <div class="col-sm-10">
      <input type="text" name="id" value="<?php echo $id?>" class="form-control" id="inputEmail3" readonly/>
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Product Name</label>
    <div class="col-sm-10">
      <input type="text" name="name" value="<?php echo $row['name'];?>" class="form-control" id="inputEmail3" readonly/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Price</label>
    <div class="col-sm-10">
      <input type="text" name="price" value="Php <?php echo formatMoney($row['price'],2);?>" class="form-control" id="inputPassword3" readonly/>
    </div>
  </div>

     <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Quantity</label>
    <div class="col-sm-10">
      <input type="text" name="quantity" value="<?php echo $row['quantity'];?>" class="form-control" id="inputPassword3" readonly/>
    </div>
  </div>
  
    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Descrition</label>
    <div class="col-sm-10">
      <textarea class="form-control"  name="description" rows="3" readonly/><?php echo $row['details'];?></textarea>
    </div>
  </div>

     <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Image</label>
    <div class="col-sm-10">
      <img src="<?php echo $row['image'];?>" width="150" height="150">
    </div>
    <div>
    <br /><br />&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="asset.php" ><input type="button" value="BACK" class="btn btn-success"/></a>
  </div></div>

</form>
</div>


          
        </div><!--/span-->
       
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
            <a href="asset.php" class="list-group-item active">Products</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
          </div>
        </div><!--/span-->

        <!--end of sidebar-->


      </div><!--/row-->


  

      <hr>

      <?php include('footer.php');?>

    </div><!--/.container-->



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="offcanvas.js"></script>
  </body>
</html>
