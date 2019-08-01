<?php include('include/connect.php');?>
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
					<a id="logoM" href="index.html"><img src="" alt=""/></a>
                  <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					  	 <li ><a href="index.php"><i class="icon-home icon-large"></i> Home</a></li>
            <li  ><a href="products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
            <li class="active"  ><a href="contact.php"><i class="icon-signal"></i> Contact Us</a></li>
            <li><a href="aboutus.php"><i class="icon-flag"></i>  About Us</a></li>
					</ul>
                   
                    <ul class="nav pull-right">
						<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">Login <b class="caret"></b></a>
						<div class="dropdown-menu">
							 <?php
                            if (isset($_POST['login'])) {
                            function clean($str) {
                            $str = @trim($str);
                            if (get_magic_quotes_gpc()) {
                            $str = stripslashes($str);
                            }
                            return mysql_real_escape_string($str);
                            }                                       
                            $email = clean($_POST['email']);
                           $password=clean($_POST['password']);
                           $pass=md5($password);
                            
                            
                            $query = mysql_query("select * from customers where Email='$email' and Password='$pass' ") or die(mysql_error());
                            $count = mysql_num_rows($query);
                            $row = mysql_fetch_array($query);
                            if ($count > 0) {
                            session_start();
                            session_regenerate_id();
                            $_SESSION['id'] = $row['CustomerID'];
                            $memid=$row['CustomerID'];
                            $Fname=$row['Firstname'];
$user=$row['Email'];
date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    
mysql_query("insert into loginout_history(CustomerID,User,Name,Time_in,Time_out)values('$memid','$user','$Fname','$date','')")or die (mysql_error());
                             echo "<script>window.location.replace('user_index.php')</script>";
                            session_write_close();


                       } else {
                        session_write_close();
                           ?>
         
        	        <script type="text/javascript">
                  alert("Invalid Username or Password");
                      </script>
    
                     <?php }
               }
       ?>
						<form class="form-horizontal loginFrm" method="post">
						  <div class="control-group">								
							<input type="text" class="span2" name="email" id="inputEmail" placeholder="Email">
						  </div>
						  <div class="control-group">
							<input type="password" class="span2" name="password" id="inputPassword" placeholder="Password">
						  </div>
						  <div class="control-group">
							<button type="submit" name="login" class="btn pull-right">Sign in</button>
                            <left><a href="forgotpass.php"><font color="blue">forgot password</font></a></left>
						  </div>
					
						</form>				
						</div>
					</li>
					<li >
						<a href="register.php">Sign Up</a>
					</li>
					</ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
      
<!-- ======================================================================================================================== -->	
<div id="mainBody" class="container">
<div class="thumbnail">


<center><a href="map.php"><h2><font color="101010">Click here!</h2> LOCATION OF THE COMPANY, <b>MAP</b></a></center></font>
<!-- ==================================================Header End====================================================================== -->

		<div class = "jumbotron">
	<ol><b><align = "center"> For more comments and suggestions, contact us at: </align><ol></b>
	<br/>
	<p>The company is located at Shan Kone St San Chang Tsp, Yangon, Myanmar (Burma)</p> 
	<p/>Email Address: info@dreamstar.com
	<p/>Website: http://www.dreamstarcom/
    <p/>https://www.facebook.com/DreamOnlineMobileStore
	<p/>Contact No:  +959-420007925,+959-795266217
		
	
	</div>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div class="thumbnail"  id="footerSection">
<script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
<marquee>&copy; DreamStar Online Mobile Store</marquee>
</div></div></body>
