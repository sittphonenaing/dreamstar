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
  <li><a href="equipment.php">List</a></li>
</ol>

<div class="well">

  <?php
                                    if (isset($_POST['submit'])) {

                                        $id = $_POST['id'];
                                        $name = $_POST['name'];
                                         $price = $_POST['price'];                                     
                                        $code = $_POST['code'];
                                        $brand = $_POST['brand'];                                     
                                        $type= $_POST['type'];
                                        $supp= $_POST['supp'];
                                        $emp= $_POST['emp'];
                                        $method=  $_POST['method'];
                                        $sv=  $_POST['sv'];
                                        $life=  $_POST['life'];
                                        $date=$_POST['date'];

                         mysql_query("insert into tb_equipment
          (item_ID,item_code,item_name,brand_name,price,employee_id,item_category,supplier_id,date_post,status) values
     ('$id','$code','$name','$brand','$price','$emp','$type','$supp','$date','Good')") or die(mysql_error());

         mysql_query("insert into asset_depreciation(item_ID,price,salvage_val,years,depmed) values('$id','$price','$sv','$life','$method')") or die(mysql_error());
                                            ?>

                                         
 <script type="text/javascript">
                                                alert("New Equipment addedd succesfully");
                                                    window.location= "equipment.php";
                                            </script>

                                            <?php
                                    }
                                    ?>

<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">

       <fieldset> 
                           <div id="legend">
                                <legend class="">New Equipment</legend>
                            </div> 
       </fieldset>                     

<input type="hidden" id="username" name="id" value="<?php
                        $id = mysql_query("select MAX(item_id) as max_item_id from tb_equipment");                                       
                        $row = mysql_fetch_array($id);
                        echo $row['max_item_id'] + 1;                                       
                        ?>" class="input-xlarge" required/>

  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-10">
      <input type="text" name="name" class="form-control" id="inputEmail3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Code</label>
    <div class="col-sm-10">
      <input type="text" name="code" class="form-control" id="inputEmail3" required/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"> Price</label>
    <div class="col-sm-10">
      <input type="text" name="price" class="form-control" id="inputPassword3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Brand</label>
    <div class="col-sm-10">
      <input type="text" name="brand" class="form-control" id="inputPassword3" required/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Item Type</label>
    <div class="col-sm-10">
       <select  class="form-control" id="inputPassword3" name="type" required/>
         <option value="">...</option>
        <?php
        $query=mysql_query("select * from item_category") or die (mysql_error());
        while($row=mysql_fetch_array($query)){
        ?>
        <option value="<?php echo $row['category_id'];?>"><?php echo $row['item_name'];?></option>
        <?php } ?>
      </select>
    </div>
  </div>


  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Supplier</label>
    <div class="col-sm-10">
     <input type="text" name="supp" class="form-control" required />
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">User</label>
    <div class="col-sm-10">
    <input type="text" name="emp" class="form-control" required/>
    </div>
  </div>
  
    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Date Post</label>
    <div class="col-sm-10">
    <input type="date" name="date" class="form-control" required/>
    </div>
  </div>


       <fieldset> 
                           <div id="legend">
                                <legend class="">Asset Depreciation</legend>
                            </div> 
       </fieldset>

         <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Depreciation Method</label>
    <div class="col-sm-10">
    <select  class="form-control" id="inputPassword3" name="method" required/>
         <option value="">...</option>
        <?php
        $query=mysql_query("select * from dep_method") or die (mysql_error());
        while($row=mysql_fetch_array($query)){
        ?>
        <option value="<?php echo $row['methodID'];?>"><?php echo $row['dep_method'];?></option>
        <?php } ?>
      </select>

    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Salvage Value</label>
    <div class="col-sm-10">
      <input type="text" name="sv" class="form-control" id="inputPassword3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Useful Life</label>
    <div class="col-sm-10">
      <input type="text"  name="life" class="form-control" id="inputPassword3" required/>
    </div>
  </div>


  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" name="submit" class="btn btn-success">Submit</button>
    </div>
  </div>

</form>
</div>


          
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
