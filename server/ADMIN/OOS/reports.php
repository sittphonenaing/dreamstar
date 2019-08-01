<?php include('../../include/connect.php');

?>
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
    <!-- Bootstrap core CSS -->

      <link href="css/font-awesome.css" rel="stylesheet" media="screen">

   <link href="css/bootstrap.css" rel="stylesheet" media="screen">

    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
   <script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" charset="utf-8" language="javascript" src="/js/DT_bootstrap.js"></script>
    <script src="js/bootstrap.js"></script>   
        <script src="js/jquery-1.7.2.min.js"></script>
 
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
    
          <form action="print_orders.php" target="my-iframe" class="form-horizontal" method="post">

       <div class="control-group">
          <label class="control-label" for="password">From:</label>
           
        <input name="from" type="date" id="password" class="input-xlarge" required/>&nbsp;&nbsp;&nbsp;
             <label class="control-label" for="password">To:</label>
             <input name="to" type="date" id="password" class="input-xlarge" required/>&nbsp;&nbsp;&nbsp;
         <input name="submit" class="btn btn-default"  type="submit" value="Search" />
        </div>

      </form>

      <br/> <br/>

          <iframe src="print_orders.php" name="my-iframe" height="500px" width="100%"></iframe>


          
        </div><!--/span-->
       
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
