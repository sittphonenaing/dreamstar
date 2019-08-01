<?php
	include('../../include/connect.php');
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

    <link href="css/bootstrap.css" rel="stylesheet">

    <link href="css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
     <style>
   body {
    background-image: url("background1.JPG");
    background-repeat: no-repeat;
}
</style>
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
    <form action="backup.php" method="post">
    
    <input type="hidden" id="ID" name="id" value="<?php
                        $id = mysql_query("select MAX(ID) as max_cusid from backup_dbname");                                       
                        $row = mysql_fetch_array($id);
                        echo $row['max_cusid'] + 1;                                       
                        ?>" class="input-xlarge" required/>
                           
 <input type="submit" class="btn btn-success" value="BACKUP ALL DATA" /><p><font color="black">Note: <b>Backup all records like Customers, Products and Order Product Report.</b></p></font>
</form>  <br /> 
   <iframe src="print_database.php" height="500px" width="100%"></iframe>
          
        </div><!--/span-->

        

        
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
          <a href="index.php" class="list-group-item">Home</a>
            <a href="user.php" class="list-group-item ">User List</a>
           <a href="user_type.php" class="list-group-item ">User Type</a>
           <a href="admin_report.php" class="list-group-item">User Report</a>
           <a href="Recovery.php" class="list-group-item active">Database Recovery</a>
          </div>
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
