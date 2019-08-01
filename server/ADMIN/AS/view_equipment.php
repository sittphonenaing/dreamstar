<?php include('../../../include/connect.php');
include('formatMoney.php');
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

  
<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">
<?php 
$id=$_GET['id'];
$query=mysql_query("select * from tb_equipment where item_id='$id'") or die (mysql_error());
$row=mysql_fetch_array($query);
$supp=$row['supplier_id'];
$emp=$row['employee_id'];
$status=$row['status'];
$dp=$_GET['id'];
$query2=mysql_query("select * from asset_depreciation where item_id='$dp'") or die (mysql_error());
$row2=mysql_fetch_array($query2);
$depmed=$row2['depmed'];


?>
       <fieldset> 
                           <div id="legend">
                                <legend class="">Equipment Info.</legend>
                            </div> 
       </fieldset>                     

  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-10">
      <input type="text" name="name" value="<?php echo $row['item_name'];?>" class="form-control" id="inputEmail3" readonly/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Code</label>
    <div class="col-sm-10">
      <input type="text" name="code" value="<?php echo $row['item_code'];?>" class="form-control" id="inputEmail3" readonly/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"> Price</label>
    <div class="col-sm-10">
      <input type="text" name="price" value="<?php echo $row['price'];?>" class="form-control" id="inputPassword3" readonly/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Brand</label>
    <div class="col-sm-10">
      <input type="text" name="brand" value="<?php echo $row['brand_name'];?>" class="form-control" id="inputPassword3" readonly/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Item Type</label>
    <div class="col-sm-10">
          
        <input type="text" class="form-control" value=" <?php
                  $type=$row['item_category'];
        $query=mysql_query("select * from item_category where category_id='$type'") or die (mysql_error());
        $row=mysql_fetch_array($query);
        echo $row['item_name'];
        ?>" readonly/>
      
    </div>
  </div>


  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Supplier</label>
    <div class="col-sm-10">
               
         <input type="text" class="form-control" value="<?php echo $supp; ?>" readonly/>
       
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">User</label>
    <div class="col-sm-10">
         <input type="text" class="form-control"  value=" <?php echo $emp;?>" readonly/>
      
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Status</label>
    <div class="col-sm-10">
         <input type="text" class="form-control"  value=" <?php echo $status; ?>" readonly/>
      
    </div>
  </div>


       <fieldset> 
                           <div id="legend">
                                <legend class="">Asset Depreciation</legend>
                            </div> 
       </fieldset>
<?php 
$id=$_GET['id'];
$query4=mysql_query("select * from asset_depreciation where item_id='$id'") or die (mysql_error());
$row4=mysql_fetch_array($query4);
                          $years=$row4['years'];
                  $price=$row4['price'];
                   $sv=$row4['salvage_val'];
?>
       <table>   
                            <tr>
                            <td colspan="2"><div class="control-group">
                                <!-- Password-->
                                <label class="control-label" for="password">Depreciation Method</label>
                                <div class="controls">

                                    <input type="text" id="password" name="minquan" value="<?php 
                                    $depmed=$row4['depmed'];
                                    $query5=mysql_query("select * from dep_method where methodID='$depmed'") or die (mysql_error());
                                    $row5=mysql_fetch_array($query5);
                                    echo $row5['dep_method'];
                                    ?>" class="form-control" readonly/>
                                </div>
                            </div></td>



                             <td  colspan="3"><div class="control-group">
                                <!-- Password-->
                                <label class="control-label" for="password">Purchase Price</label>
                                <div class="controls">
                                    <input type="text" id="password" name="minquan" value="<?php echo 'PHP'.formatMoney($row4['price'],2);?>" class="form-control"  readonly/>
                                </div>
                            </div></td>
                           </tr>
                            <tr>
                            <td  colspan="2"> <div class="control-group">
                                <!-- Password-->
                                <label class="control-label" for="password">Asset's Life</label>
                                <div class="controls">
                                    <input type="text" id="password" name="minquan" value="<?php echo $row4['years'];?>"class="form-control"  readonly/>
                                </div>
                            </div></td>
                             <td><div class="control-group">
                                <!-- Password-->
                                <label class="control-label" for="password">Salvage Value</label>
                                <div class="controls">
                                    <input type="text" id="password" name="minquan" value="<?php echo $row4['salvage_val'];?>" class="form-control"  readonly/>
                                </div>
                            </div></td>
                           </tr>
                        </table>

                         <div id="legend">
                                <legend class="">Depreciation Schedule
                             </div>  
               
<?php

if($depmed=='1'){
?>

<table class="table table-bordered">
        <thead>
          <tr>
         <th><center>Years</center></th>
            <th><center>Straight Line Depreciation</center></th>
          </tr>
        </thead>
        <tbody>
          <?php 
for ($x=1; $x<=$years; $x++)
  {
    $depval=$price-$sv;
    $annualdep=$depval/$years;
  echo'<tr>';
      echo '<td><center>'.$x.'</center></td>';
    echo '<td><center>'.$annualdep.'</center></td>';
  echo'</tr>';
    } ?>
        </tbody>
      </table>

<?php
}

else{
?>
 <table class="table table-bordered">
        <thead>
          <tr>
            <th><center>Years</center></th>
            <th><center>Double Declining Balance</center></th>
          </tr>
        </thead>
        <tbody>
          <?php 
  $deprate=((100/$years)*2);
    $annualdep=($price*$deprate)/100;
$depval=$row4['price'];

for ($x=1; $x<=$years; $x++)
  {
    $annualdep=(($depval*$deprate)/100);
                          echo '<tr>';
                           echo '<td><center>'.$x.'</center></td>';
    echo '<td><center>'.$annualdep2=$annualdep.'</center></td>';
    $depval=$depval-$annualdep2;
        } 
  
  echo'</tr>';
    ?>
          
        </tbody>
      </table>
<?php
}

?>

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
