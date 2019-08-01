<?php include('include/connect.php');
include('include/session.php');
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
<body>
  <!-- Navbar
    ================================================== -->
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
					<a id="logoM" href="index.html"><img src="" alt=""/></a>
                  <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					 	 <li class=""><a href="user_index.php"><i class="icon-home icon-large"></i> Home</a></li>
					  <li class=""><a href="user_products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
					  <li ><a href="user_contact.php"><i class="icon-signal"></i> Contact Us</a></li>
                      <li class="active"><a href="user_aboutus.php"><i class="icon-flag"></i> About Us</a></li>
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


<center><a href="maps.php"><h2><font color="#333">Click here!</h2> LOCATION OF THE COMPANY, <b>MAP</b></a></center></font>
<!-- ==================================================Header End====================================================================== -->

		<div class = "well">
       <div class = "well">
        <font color="red">DreamStar</font><br />
DreamStar offers you the best service to order your new sim free mobile phone from 600 different models with wide range of colours and keypads.

As successful online mobile store, we always offer you the cheap Smartphones, android phones, iPhones and all your favorite sim free mobile phones. On our website you will find the best world brands like, Samsung, Apple, Nokia, Motorola, Blackberry, LG, Sony, HTC... and many more.

Our web site is getting updated on daily basis with specifications for new model and news in mobile phones industry, presenting you all details you want and need to know about your favorite mobile phones.
<br /><br />


        <font color="red">Background Of DreamStar</font><br />
In the real world, our Dreamstar Co.Ltd sell and deliver our products to customers manually. Dreamstar store branches established in key areas of Myanmar. The company is located in Yangon and the branches are in Bago, Mandalay, Naypyidaw, Taunggyi, Pathein, Monywa, Sittwe and Myitkyina. The opening hours of all shops are from 9 am to 6 pm, but our online shop is 24 hour service for guests. The company was established in 2003 and can open branches in 2010. About 2000 employees work for the company and are trained to be qualified. Thus, customers do not have to be careful with the company and can rely on our products.
Here is the information on the site of our online shop. There are many products to choose from for guests. When customers click on the website you will see the user friendly and attractive to us and the easy navigation page for each web page will be provided. Our online shop page displays each product that binds to the photos associated with price and product review. If customers want to order and purchase must register or enroll in the registration form on our website.  

<br /><br />

<font color="red">MISSION STATEMENT</font><br />
1.  To provide world-class security services through leading edge automated security hardware & software technology.<br />
2.  Commitment to serve our clients, peers and community<br />
3.  Performance Excellence<br />
4.  Innovation Improve, develop, evolve, and make a difference.<br />
5.  To be of service to the Filipino community by providing security & anti-crime solutions through the power of technology<br />
<br/><font color="red">VISSION<br /></font>
The online shopping system will reduce Dreamstar's various work to be done by many manual employees and work procedures will be better than these busy for animals in the last few days. So we decided to do the online store project. Customers will also come together to purchase advanced labor computer products today.


		
	
	</div>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div class="thumbnail"  id="footerSection">
<marquee>&copy; DreamStar Online Mobile Store</marquee>
</div></div></body>
