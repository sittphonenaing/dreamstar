<?php include('../../../include/connect.php');
include('function.php');
        $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
        $limit = 3;
        $startpoint = ($page * $limit) - $limit;
        
        //to make pagination
        $statement = "`tb_announcement`";
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
  <style>
   body {
    background-image: url("../background1.JPG");
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

     
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h2>Asset Management System</h2>
          </div>




       <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>

<div class="well">
   <?php
      
                $query = mysql_query("select * from tb_announcement {$statement} LIMIT {$startpoint} , {$limit}   ") or die(mysql_error());
                while ($row = mysql_fetch_array($query)) {
         ?>


        <div class="row"> 
            <div class="col-md-5">
                <form method="post">
                    <input type="hidden" name="image" value="../ADS/<?php echo $row['image'];?>"  />
                    <input type="hidden" name="name" value="<?php echo $row['name'];?>" />
                    <input type="image" src="../ADS/<?php echo $row['image'];?>" name="image"  class="img-responsive"/>
                </form>
            </div>
            <div class="col-md-6">
                <h3><a href="announcement_detail.php?id=<?php echo $row['announcementID']; ?>"><?php echo $row['name'];?></a>
                </h3>
                <p>Date: <?php echo date("F j, Y - h:i A ", strtotime($row['date'])) ?></p>
                <p>
                       <?php $string=$row['detail'];
                        $string = strip_tags($string);
                        if (strlen($string) > 100) {

                        // truncate string
                            $stringCut = substr($string, 0, 200);
                        $string = substr($stringCut, 0, strrpos($stringCut, ' ')); 
                                                    }
                        echo $string ."...";
                    ?>
                </p>
                <a class="btn btn-primary" href="announcement_detail.php?id=<?php echo $row['announcementID']; ?>">Read More <i class="fa fa-angle-right"></i></a>
            </div>

        </div>

        <br/><br/>

             <?php } ?>

            <div class="col-lg-12">
                <ul class="pagination">
                     <?php
    echo pagination($statement,$limit,$page);
?>      
                </ul>
            </div>
</div>
        </div><!--/span-->
      
      <?php
	if(isset($_POST['image'])){
	   $image=$_POST['image'];
       $name= $_POST['name'];
?>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div class="well">
<img src="<?php echo $image;?>" width="525"/>
</div>
<div class="col-sm-10">
</div>
        </div>
        <center><font size="4"><strong><?php echo $name; ?></strong></font></center>
        <div class="modal-footer">
        <form method="post">
        
          <input type="submit" name="" class="btn btn-danger"  value="Close">
        </div>
      </div>
    </div>
  </div>
  </form>
      <script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
    });
</script>
<?php
	}
?>
      
        
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
		<div class="list-group">
		<a href="index.php" class="list-group-item active">Home</a> 
            <a href="asset.php" class="list-group-item">Products</a>
            <a href="reports.php" class="list-group-item">Product Report</a>
            <a href="reports1.php" class="list-group-item">Product List</a>
           
          </div>
          </div>
          <div class="list-group">


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
