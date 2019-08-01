<?php include('include/connect.php');
 include('include/session.php'); 
include('function.php');
include('formatMoney.php');
      $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
      $limit = 4;
      $startpoint = ($page * $limit) - $limit;
        
        //to make pagination
        $statement = "`tb_products`";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
     <link rel="shortcut icon" href="img/aalogo.jpg">

    <title>DreamStar Online Mobile Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<!-- Less styles  
	<link rel="stylesheet/less" type="text/css" href="less/bootsshop.less">
	<script src="less.js" type="text/javascript"></script>
	 -->
	 
    <!-- Le styles  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="assets/css/docs.css" rel="stylesheet"/>
	 
    <link href="assets/style.css" rel="stylesheet"/>
	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>

	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
     <style>
   body {
    background-image: url("background1.JPG");
    background-repeat: no-repeat;
}
</style>
    <!-- Le fav and touch icons -->
 </head>
<body  >
  <!-- Navbar
    ================================================== -->
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
					<a id="logoM" href="user_index.php"><img src="" alt=""/></a>
                  <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					  <li class=""><a href="user_index.php"><i class="icon-home icon-large"></i> Home</a></li>
					  <li class="active"><a href="user_products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
					  <li class=""><a href="user_contact.php"><i class="icon-signal"></i> Contact Us</a></li>
                      <li class=""><a href="user_aboutus.php"><i class="icon-flag"></i> About Us</a></li>
               <li class=""><a href="user_order.php"><i class="icon-shopping-cart"></i> Ordered Products</a></li>
               <li class=""><a href="Email.php"><i class="icon-envelope"></i> Email</a></li>
        
					</ul>
                   
                    <ul class="nav pull-right">
                      <li>
						<a href="user_account2.php"><?php $query = mysql_query("select * from customers where CustomerID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($query);
                $id = $row['CustomerID']; ?> <b>Welcome!  </b> <?php echo $row['Firstname'];?> <?php echo $row['Lastname'];?> <span class="badge badge-info"> <?Php include('announce.php');?></span></a>
					</li>
				
					<li>
						<a href="logout.php"><i class="icon-off"></i> Log Out</a>
					</li>
					</ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
<!-- ======================================================================================================================== -->	
<div id="mainBody" class="container">
<div class="thumbnail">
<?php include ('user_header.php'); ?>
</div>
<!-- ==================================================Header End====================================================================== -->


  <font color="white"><h3> Products </h3> 
  
  <form method="post">  
<div>
<Center>
<input type="image" title="Search" src="assets/img/search.png" name="submit" alt="Search"/> 
<input type="text" name="search" placeholder="Search for..."> 
</Center>
<br /></div>
</form>

<form method="POST">

  <hr class="soft"/>
  <div class="tab-pane  active" id="blockView">
    <ul class="thumbnails">
    
       <?php
	$key="";
	if(isset($_POST['search']))
		$key=$_POST['search'];
	
	if($key !="")
		$sql_sel=mysql_query("SElECT * FROM tb_products WHERE name  like '%$key%' or price like '%$key%'");
    else if($key !="" )
         $sql_sel=mysql_query("SElECT * FROM tb_products WHERE quantity like '%$key%'");
	else
		 $sql_sel=mysql_query("SELECT * FROM tb_products {$statement} LIMIT {$startpoint} , {$limit}")or die(mysql_error());
       
   while($row=mysql_fetch_array($sql_sel)){
                  $id=$row['productID'];
                  $qty=$row['quantity'];
    ?>
    
      <li class="span3">
        <div class="thumbnail">
        <?php
	if($qty==0){
?>
        <span class="sticker-wrapper top-left">
        <span style="color:red;"><b>SOLD OUT</b>
       <img src="server/ADMIN/SERVER/AS/<?php echo $row['image']; ?>" alt="" style="max-width: 130px; max-height: 98px;"/>
        </span></span>
        
        <?php
	}else{
?>
<img src="server/ADMIN/SERVER/AS/<?php echo $row['image']; ?>" alt="" style="max-width: 130px; max-height: 98px;"/>
<?php
	}
?>
        
        <div class="caption">
          <h5><b><?php echo $row['name']; ?></b></h5>
          <h4><a class="btn btn-success" title="Click to view!" href="user_product_details.php?id=<?php echo $id;?>"><i class="icon-check"></i> VIEW</a> <span class="pull-right">$<?php echo formatMoney($row['price'],2); ?></span></h4>
        </div>
        </div>
      </li>
         <?php } ?>
     
      </ul>
  <hr class="soft"/>
  </div>
<center>

    <?php
  echo pagination($statement,$limit,$page);
?>  

</center>
      <br class="clr"/>

</font>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div  id="footerSection" class="thumbnail">
	<?php include('footer2.php');?>
</div>
</div>
</body>