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
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Le styles  -->

    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
  <link href="assets/css/docs.css" rel="stylesheet"/>
   

  <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>

  
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
     <style>
   body {
    background-image: url("background1.JPG");
    background-repeat: no-repeat;
}
</style>
 </head>
<body >
  <!-- Navbar
    ================================================== -->
 <nav class="navbar navbar-inverse navbar-fixed-top">
 <div class="navbar-inner">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">DreamStar       </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.php"><i class="icon-home icon-large"></i> Home</a></li>
            <li><a href="products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
            <li><a href="contact.php"><i class="icon-signal"></i> Contact Us</a></li>
            <li><a href="aboutus.php"><i class="icon-flag"></i>  About Us</a></li>
            <li><a href="server/index.php"> Administrator  </a></li>
              </ul>
            
                                    
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
       <div class="pull-right " style="padding-top :7px">    &nbsp;<a href="register.php"><button  name="submit" class="btn pull-right">Sign Up</button></a> </div>
       
       <div class="pull-right"style="padding-top :7px">
             <form  method="post">
                            
              <input type="text" class="span2 form-control" name="email" id="inputEmail" placeholder="Email"/>
                            <input type="password" class="span2 form-control" name="password" id="inputPassword" placeholder="Password"/>
             &nbsp;
                         
                          
              <button type="submit" name="submit" class="btn pull-right">Sign in</button>
              
          
            </form> 
                              
            </div>
        
        
                       </div><!--/.nav-collapse --></div>
    </div>
      
    </nav>
                
<!-- ======================================================================================================================== --> 
<div id="mainBody" class="container">

<header id="header">
<div class="row">
   <br />

</div>
<div class="clr"></div>
</header>
<!-- ==================================================Header End====================================================================== -->
<div class="container theme-showcase" role="main">
   <div class="container">
  <hr class="soft">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="width: 900px; margin: 0 auto">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="img/s8.png" alt="First slide">
          </div>
          <div class="item">
            <img src="img/red.jpg" width="900" height ="500" alt="Second slide">
          </div>
          <div class="item">
            <img src="img/banner1.jpg" width="900" height ="500" alt="Third slide">
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
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div  id="footerSection">
  <?php include('footer2.php');?>
    <script src="docs.min.js"></script>
     
 <script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    
</body>