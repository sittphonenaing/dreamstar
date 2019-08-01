<?php include('../../../include/connect.php'); ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../../../img/aalogo.jpg">

    <title>AA2000 Security and Technology</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

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

<div class="well">

 
<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">
       
       <?php
              
                
                
                $id=$_GET['id'];
$query=mysql_query("select * from customers where CustomerID='$id'") or die (mysql_error());
$row=mysql_fetch_array($query);

            ?>
		<h3>Customer Information</h3><br /><br />

		<div class="form-group">
			<label class="col-sm-2 control-label" for="inputFname">First name</label>
			<div class="col-sm-10">
			  <input type="text" name="fname" class="form-control"  id="inputFname" value="<?php echo $row['Firstname'];?>" readonly/>
			</div>
		 </div>
         
         <div class="form-group">
			<label class="col-sm-2 control-label" for="inputMname">Middle name </label>
			<div class="col-sm-10">
			  <input type="text" name="middlename"  class="form-control" id="inputmiddlename" value="<?php echo $row['Middle_name'];?>" readonly/>
			</div>
            </div>
            
		 <div class="form-group">
			<label class="col-sm-2 control-label"for="inputLname">Last name </label>
			<div class="col-sm-10">
			  <input type="text" name="lastname" class="form-control" id="inputLname" value="<?php echo $row['Lastname'];?>" readonly/>
			</div>
		 </div>
		<div class="form-group">
		<label class="col-sm-2 control-label"for="dob">Date of Birth </label>
		<div class="col-sm-10">
		    <input type="date" name="bdate" class="form-control" onchange="validation()" id="dob" value="<?php echo $row['Birthday'];?>" readonly/>
			
		</div>
        
         </div>
         
         <div class="form-group">
			<label class="col-sm-2 control-label"for="Gender">Gender</label>
			<div class="col-sm-10">
			  <input type="text" name="Gender" class="form-control" id="Gender" value="<?php echo $row['Gender'];?>" readonly/> 
			</div>
		</div>
        
		<div class="form-group">
			<label class="col-sm-2 control-label"for="adress">Address</label>
			<div class="col-sm-10">
			  <input type="text" name="address" class="form-control" id="address" value="<?php echo $row['Address'];?>" readonly/> 
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label"for="city">City</label>
			<div class="col-sm-10">
			  <input type="text" name="city" class="form-control"  id="city" value="<?php echo $row['City'];?>" readonly/> 
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label"for="phone">Contact Number </label>
			<div class="col-sm-10">
			  <input type="text"  name="cnumber" class="form-control" id="phone" value="<?php echo $row['Contact_number'];?>" readonly/>
			</div>
		</div>
		<div class="form-group">
		<label class="col-sm-2 control-label"name="email" for="inputEmail">Email </label>
		<div class="col-sm-10">
		  <input type="text" name="email" class="form-control" id="inputEmail" value="<?php echo $row['Email'];?>" readonly/>
		</div>
	  </div>	  
	<div class="form-group">
		<label class="col-sm-2 control-label"for="inputPassword">Password</label>
		<div class="col-sm-10">
		  <input type="password" name="password" class="form-control" name="midname" id="password" onchange="validation()"  value="<?php echo $row['Password'];?>" readonly/>
		</div>
	  </div>	   



</form>
</div>



          
        </div><!--/span-->
       
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
				<a href="index.php" class="list-group-item ">Home</a>
            <a href="Customers.php" class="list-group-item active">Customers<img src="customer.png"></a>
            <a href="Customer_list.php" class="list-group-item">Customer List<img src="customer.png"></a>
			<a href="announcement.php" class="list-group-item">Announcement<img src="head.png"></a>
            <a href="messages.php" class="list-group-item">Messages <img src="message.png"><span class="badge badge-info"><?php include('query.php');?></span></a>
			
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="offcanvas.js"></script>
  </body>
</html>
