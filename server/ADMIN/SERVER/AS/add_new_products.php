<?php include('../../../include/connect.php'); include('formatMoney.php'); include('../sessions.php'); ?>
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

  <?php
                                    if (isset($_POST['submit'])) {

                                   
                                        $name = $_POST['name'];
                                        if(is_string($name)){   
                                         $price = $_POST['price'];
                                         if(ctype_digit($price)){
                                        $quantity = $_POST['quantity'];
                                           if(ctype_digit($quantity)){
                                            
                                            $name = $_POST['name'];
                                             $price = $_POST['price'];
                                            $quantity = $_POST['quantity'];
                                        $description = $_POST['description'];
                                         date_default_timezone_set('Asia/Manila');
                                        $new =date('F j, Y g:i:a  ');

                                         //image
                                $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
                                $image_name = addslashes($_FILES['image']['name']);
                                $image_size = getimagesize($_FILES['image']['tmp_name']);

                                move_uploaded_file($_FILES["image"]["tmp_name"], "products/" . $_FILES["image"]["name"]);
                                $location = "products/" . $_FILES["image"]["name"];

                         mysql_query("insert into tb_products
                          (productID,name,price,image,details,quantity,date_created) values
                  ('','$name','$price','$location','$description','$quantity','$new')") 
                     or die(mysql_error());
                     
                mysql_query("INSERT INTO tb_productreport(ProductID,Beg_qty,updated_qty) VALUES ('','$quantity','')");     
                  
                     $result1 = mysql_query("select * from tb_user where userID=$userID");
              $row1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail="Name= $name was added to product ";
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Inserted','$detail')");
                     
                                            ?>

                                         
 <script type="text/javascript">
                                                alert("Product added succesfully");
                                                    window.location= "asset.php";
                                            </script>

                                            <?php
                                    }else{
                                        echo'<script>alert("Error! Input a number only in Product Quantity.")</script>';
                                    }
                                    }else{
                                        echo'<script>alert("Error! Input a number only in Price.")</script>';
                                    }
                                    }
                                    }
                                    ?>

<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">



  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Product Name</label>
    <div class="col-sm-10">
      <input type="text" name="name" class="form-control" id="inputEmail3" required/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Price</label>
    <div class="col-sm-10">
      <input type="text" name="price" class="form-control" id="inputPassword3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Quantity</label>
    <div class="col-sm-10">
      <input type="text" name="quantity" class="form-control" id="inputPassword3" required/>
    </div>
  </div>
 

    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Descrition</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="description" rows="3" required/></textarea>
    </div>
  </div>

     <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Product Image</label>
    <div class="col-sm-10">
      <input type="file" name="image" id="exampleInputFile" required/>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="asset.php" ><input type="button" value="BACK" class="btn btn-success"/></a>
      <button type="submit" name="submit" class="btn btn-success">Submit</button>
    </div>
  </div>
</form>
</div>


          
        </div><!--/span-->
       
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
          <a href="index.php" class="list-group-item">Home</a> 
            <a href="asset.php" class="list-group-item active">Products</a>
            <a href="reports.php" class="list-group-item">Product Report</a>
            <a href="reports1.php" class="list-group-item">Product List</a>
            __________________________________
            <a href="equipment.php" class="list-group-item">Equipment</a>
            <a href="careoff_report.php" class="list-group-item">Assigned Equipment</a>
            <a href="fixedasset_report.php" class="list-group-item">Fixed Asset Report</a>
             <a href="configuration.php" class="list-group-item">Equipment Category</a>
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
