<?php include('include/connect.php');
 include('include/session.php');
 include('formatMoney.php'); 
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

    <!-- Le fav and touch icons -->

<script type='text/javascript'>
function validation(){
    //var CheckPassword = /^[A-Za-z]\w{7,14}$/; - numbers and characters and uppercase
    //var CheckPassword = /^[a-z]\w{7,14}$/; -
        var letterexp = /^[a-zA-Z]+$/;
    var quanti = 32; 
    var CheckPassword = /^\w{7,14}$/; 
    if(document.getElementById('password').value.match(CheckPassword)){
    }else{
        alert('Password must have minimum and maximum of 7 to 14 characters');
        document.getElementById('password').value = '';
        document.getElementById('password').focus();
    }

  var date1 = new Date();
        var  dob= document.getElementById("dob").value;
        var date2=new Date(dob);
            var y1 = date1.getFullYear(); //getting current year
            var y2 = date2.getFullYear(); //getting dob year
            var ages = y1 - y2;           //calculating age 
        if(+ages<=16){
            alert("Age below 18 is not allowed to register");
             document.getElementById('dob').value='';
        }
}
</script>
     <style>
   body {
    background-image: url("background1.JPG");
    background-repeat: no-repeat;
}
</style>
  </head>
<body><font color="white">
  <!-- Navbar
    ================================================== -->
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
					<a id="logoM" href="user_index.php"><img /></a>
               <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					    <li class=""><a href="user_index.php"><i class="icon-home icon-large"></i> Home</a></li>
					  <li class=""><a href="user_products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
					  <li class=""><a href="user_contact.php"><i class="icon-signal"></i> Contact Us</a></li>
                      <li class=""><a href="user_aboutus.php"><i class="icon-flag"></i> About Us</a></li>
                      <li class=""><a href="user_order.php"><i class="icon-shopping-cart"></i> Ordered Products</a></li>
               <li class=""><a href="Email.php"><i class="icon-envelope"></i> Email</a></li>
				
					</ul>
                   
                    <ul class="nav pull-right">
                   <li class="active">
						<a href="user_account2.php"><?php $query = mysql_query("select * from customers where CustomerID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($query);
                $id = $row['CustomerID']; ?> 
                <b>Welcome!  </b> <?php echo $row['Firstname'];?> <?php echo $row['Lastname'];?> <span class="badge badge-info"> <?Php include('announce.php');?></span></a>
				
					<li>
				
					
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
<div class="well"><?php include ('user_header.php'); ?></div>
<!-- ==================================================Header End====================================================================== -->
<h3>Profile</h3></font>	
	<hr class="soft"/>
	<div class="well">


 <?php
                                    if (isset($_POST['submit'])) {

                                        $email = $_POST['email'];
                                        $password = md5($_POST['password']);
                                        $firstname = $_POST['fname'];           
                                        $lastname = $_POST["lastname"];
                                        $city = $_POST['city'];                                     
                                        $address = $_POST['address'];
                                        $birthday = $_POST['bdate'];
                                         $cnumber = $_POST['cnumber'];
                                          $Middlename = $_POST['middlename'];
                                         $gender = $_POST['gender'];
                                        



                         mysql_query("update customers set Firstname='$firstname',Middle_name='$Middlename',Lastname='$lastname',Email='$email',Password='$password',Contact_number='$cnumber',Address='$address',City='$city',Birthday='$birthday',Gender='$gender' where CustomerID='$ses_id'") or die(mysql_error());
                                            ?>

                                            <script type="text/javascript">
                                                alert("Account successfully updated");
                                            </script>


                                            <?php
                                            
                                    }
                                    ?>

	<form class="form-horizontal" method="post">
		          <?php
                $query = mysql_query("select * from customers where CustomerID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($query);
                $id = $row['CustomerID'];
            ?>
		<h3>Your personal information<a href="user_account2.php"><input class="span1 btn"  value="Back" /></a></h3>
      
        	<div class="control-group">
		<label class="control-label" for="dob">Gender</label>
		<div class="controls">
		<select class="span2" name="gender">
            <option><?php echo $row['Gender'];?></option>
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			</select>
		</div>
		</div>

  <!-------------This is for Capital the first letter-------------------->
<script language="javascript" type="text/javascript">
function cap()
{
    var str = document.getElementById("inputFname").value;
    document.getElementById("inputFname").value = str.charAt(0).toUpperCase() + str.slice(1);
}
</script>
<!----------------------------------->
		<div class="control-group">
			<label class="control-label" for="inputFname">First name   </label>
			<div class="controls">
			  <input type="text" name="fname" class="form-control" onkeydown = "cap()" id="inputFname" value="<?php echo $row['Firstname'];?>" required/>
			</div>
		 </div>
           <!-------------This is for Capital the first letter-------------------->
<script language="javascript" type="text/javascript">
function cap1()
{
    var str = document.getElementById("inputmiddlename").value;
    document.getElementById("inputmiddlename").value = str.charAt(0).toUpperCase() + str.slice(1);
}
</script>
<!----------------------------------->
         <div class="control-group">
			<label class="control-label" for="inputMname">Middle name   </label>
			<div class="controls">
			  <input type="text" name="middlename"  onkeydown="cap1()" id="inputmiddlename" value="<?php echo $row['Middle_name'];?>" required/>
			</div>
            </div>
              <!-------------This is for Capital the first letter-------------------->
<script language="javascript" type="text/javascript">
function cap2()
{
    var str = document.getElementById("inputLname").value;
    document.getElementById("inputLname").value = str.charAt(0).toUpperCase() + str.slice(1);
}
</script>
<!----------------------------------->
		 <div class="control-group">
			<label class="control-label" for="inputLname">Last name   </label>
			<div class="controls">
			  <input type="text" name="lastname" onkeydown = "cap2()" id="inputLname" value="<?php echo $row['Lastname'];?>" required/>
			</div>
		 </div>
         
		<div class="control-group">
		<label class="control-label" for="dob">Date of Birth   </label>
		<div class="controls">
		    <input type="date" name="bdate"  onchange="validation()"  id="dob" value="<?php echo $row['Birthday'];?>" required/>
			
		</div>
	  </div>
      
  <!---------------------------------------------->
<script language="javascript" type="text/javascript">
function cap4()
{
    var str = document.getElementById("address").value;
    document.getElementById("address").value = str.charAt(0).toUpperCase() + str.slice(1);
}
</script><!--------This is for Capital the first Letter--->     
		<div class="control-group">
			<label class="control-label" for="adress">Address  </label>
			<div class="controls">
			  <input type="text" name="address" onkeydown = "cap4()" id="address" value="<?php echo $row['Address'];?>" required/> 
			</div>
		</div>
		
		  <!-------------This is for Capital the first letter-------------------->
<script language="javascript" type="text/javascript">
function cap3()
{
    var str = document.getElementById("city").value;
    document.getElementById("city").value = str.charAt(0).toUpperCase() + str.slice(1);
}
</script>
<!----------------------------------->
		<div class="control-group">
			<label class="control-label" for="city">City  </label>
			<div class="controls">
			  <input type="text" name="city" onkeydown = "cap3()" id="city" value="<?php echo $row['City'];?>" required/> 
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="phone">Contact Number   </label>
			<div class="controls">
			  <input type="text"  name="cnumber" id="phone" value="<?php echo $row['Contact_number'];?>" required/>
			</div>
		</div>
		<div class="control-group">
		<label class="control-label" name="email" for="inputEmail">Email   </label>
		<div class="controls">
		  <input type="text" name="email" id="inputEmail" value="<?php echo $row['Email'];?>" required/>
		</div>
	  </div>	  
	<div class="control-group">
		<label class="control-label" for="inputPassword">Password   </label>
		<div class="controls">
		  <input type="password" name="password"  name="midname" id="password" onchange="validation()"  value="<?php echo $row['Password'];?>" required/>
		</div>
	  </div>	  
		
		
	
	<div class="control-group">
			<div class="controls">
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
				<input class="btn btn-large btn-primary  " name="submit" type="submit" value="Save" />
			</div>
		</div>		
	</form>
    
    	
		</div>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div class="well "  id="footerSection">
	<?php include('footer2.php');?></div></body>