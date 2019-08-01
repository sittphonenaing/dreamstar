<?php include('../../../include/connect.php'); include('formatMoney.php');?>
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
    <!-- Bootstrap core CSS -->

    

   <link href="css/bootstrap.css" rel="stylesheet" media="screen">

    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
   <script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" charset="utf-8" language="javascript" src="js/DT_bootstrap.js"></script>
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
  <li class="active"><a href="asset.php">List</a></li>
  <li><a href="#">Critical</a></li>
</ol>

<form method="post">  
<div>
<Center>
<input type="image" src="../../../assets/img/search.png"   alt="Search" name="submit" title="Search" />
<input type="text" name="search" placeholder="Search for..."> <p>(<b>Note: You can search the Name of the product Only.)</b></p>
</Center>
<br /></div>
</form>  

<form method="POST" action="delete_product.php">
<table border="0" class="table  table-bordered" id="example">
                             
                <p><a href="add_new_products.php" class="btn btn-success"><i class="glyphicon-plus"></i> &nbsp;Add Products</a>&nbsp;
               <input type="submit" name="delete" onclick="return confirm('Are you sure you want to delete?')"  value="Delete" class="btn btn-danger" /></p>
               
               <script language="JavaScript">
function toggle(source) {
checkboxes = document.getElementsByName('selector[]');
for(var i=0, n=checkboxes.length;i<n;i++) {
checkboxes[i].checked = source.checked;
}
}
</script> 
                                <thead>
                                    <tr>
                                        <th><input type="checkbox" onClick="toggle(this)"> ID</th>
                                        <th>Name</th>
                                        <th>Price</th>    
                                        <th>Quantity</th>
                                        <th>Actions</th> 
                                    </tr>
                                </thead>
                                <tbody>
                                
                                 <?php
	$key="";
	if(isset($_POST['search']))
		$key=$_POST['search'];
	
	if($key !="")
		$sql_sel=mysql_query("SElECT * FROM tb_products WHERE name  like '%$key%' or price like '%$key%'");
    else if($key !="" )
         $sql_sel=mysql_query("SElECT * FROM tb_products WHERE quantity like '%$key%'");
	else
		 $sql_sel=mysql_query("SELECT * FROM tb_products")or die(mysql_error());
       
   while($row=mysql_fetch_array($sql_sel)){
                  $id=$row['productID'];
    ?>
                 
                                   <tr class="del<?php echo $id ?>">
                  <td><input name="selector[]" type="checkbox" value="<?php echo $id; ?>"> <?php echo $id; ?></td>                            
                                    <td ><?php echo $row['name']; ?> </td>
                                    <td width="80">Php<?php echo formatMoney($row['price'],2); ?></td>
                                     <td ><?php echo $row['quantity']; ?> </td> 
                                  
                               
                                    <td width="200">
                    
                   <a  rel="tooltip"  title="Edit" id="<?php echo $id; ?>" href="edit_product.php?id=<?php echo $row['productID'];?>" class="btn btn-success"><font size="1">Edit</font></a>
                    <a  rel="tooltip"  title="View" id="<?php echo $id; ?>"  href="view_product.php?id=<?php echo $row['productID'];?>" class="btn btn-info"><font size="1">View</font></a>
                    <a  rel="tooltip"  title="Data will be move to History" onclick="return confirm('Are you sure you want to move to Archive?')" id="<?php echo $id; ?>"  href="Archive.php?id=<?php echo $row['productID'];?>" class="btn btn-success"><font size="1">Archive</font></a>
                                    </td>
                  
                                    </tr>
                  <?php  }  ?>
                           
                                </tbody>
                            </table>
               
          
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
</form>
