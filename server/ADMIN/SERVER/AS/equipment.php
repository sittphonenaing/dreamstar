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
  <li class="active"><a href="equipment.php">List</a></li>
</ol>

<table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                             
                <p><a href="add_new_equipment.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Add Equipment</a></p>
              
                                <thead>
                                    <tr>
                                    <th>Item Type</th>
                                    <th>OnHand Quantity</th>
                                    <th>OnHand Value</th>
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
               $query = mysql_query("select distinct item_category from tb_equipment") or die(mysql_error());
                        while ($row = mysql_fetch_array($query)) {
            $item_category=$row['item_category'];
            
            ?>
      <tr>
              <td><?php
            $cat=$row['item_category'];
            $query7 = mysql_query("select * from item_category where category_id='$cat'") or die(mysql_error());
            $row7 = mysql_fetch_array($query7);
            echo $row7['item_name'];
            ?></td>
          <td><?php
          $item_category=$row['item_category'];
                    $count_query = mysql_query("select * from tb_equipment where item_category='$item_category'") or die(mysql_error());        
          $count = mysql_num_rows($count_query);
          
                    ?>
                    <?php echo $count; ?></td>
          <td>  <?php
          $item_category=$row['item_category'];
          $result5 = mysql_query("SELECT sum(price) FROM tb_equipment where item_category='$item_category'");
          while($row5 = mysql_fetch_array($result5))
            { 
            $tprice=$row5['sum(price)']; 
          echo formatMoney($tprice,true);
            }
          ?>
          </td>
        <td width="140">
                <a  rel="tooltip"  title="View" id="v<?php echo $id; ?>"  href="equipmentlist.php?id=<?php echo $row['item_category'];?>" class="btn btn-info"><i class="icon-list icon-large"></i></a>
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
