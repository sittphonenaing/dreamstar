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
	  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="assets/css/docs.css" rel="stylesheet"/>

	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>

	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
 </head>

<body background="assets/img/images.jpg >
<br />

<?php
	include('header.php');
?>


<div class='container theme-showcase' role="main">
   <div class="container">
  <hr class="soft">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="img/aa20001.jpg" alt="First slide">
          </div>
          <div class="item">
            <img src="img/CCTV.jpg" alt="Second slide">
          </div>
          <div class="item">
            <img src="img/5.jpg" alt="Third slide">
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
		
	<div class="row">
	<div id="sidebar" class="span3">
	
</div>

</div>

	</div>
    </div>



		 <?php
                            if (isset($_POST['submit'])) {
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
       <br /><br />
<center class="well  container">
<div class="">
<form class="form-horizontal loginFrm" method="post">
						  <div class="control-group">								
							<input type="text" class="center" name="email" id="inputEmail" placeholder="Email">
					  	</div>
						  <div class="control-group">
							<input type="password" class="center" name="password" id="inputPassword" placeholder="Password">
					  	</div><br />
						  <div class="control-group">
							<button type="submit" name="submit" class="btn pull-center">Sign in</button>
                            </div>
                            	</form>
                            <a href="register.php"><button type="submit" name="submit" class="btn pull-center">Sign up</button></a>
						  
					
					
                        
</div>



</center>






<br /><br />
<marquee>DreamStar Online Mobile Store</marquee>


  <script src="docs.min.js"></script>
     
 <script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    
    </body>
</html>