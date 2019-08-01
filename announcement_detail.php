<?php include('include/connect.php');
include('include/session.php');
include('function.php');
        $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
        $limit = 3;
        $startpoint = ($page * $limit) - $limit;
        
        //to make pagination
        $statement = "`tb_announcement`";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="img/aalogo.jpg">

    <title>AA2000 Security and Technology Solution Inc.</title>

    <!-- Bootstrap core CSS -->
     <link href="assets/css/bootstrap.css" rel="stylesheet"/>

	<link href="assets/css/docs.css" rel="stylesheet"/>
	 
    <link href="assets/style.css" rel="stylesheet"/>
	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
   

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
      <div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
					<a id="logoM" href="user_index.php"><img src="" /></a>
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
               
        
					</ul>
                   
                    <ul class="nav pull-right">
                    <li class="active">
						<a href="user_account2.php"><?php $query = mysql_query("select * from customers where CustomerID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($query);
                $name=$row['Firstname'] ." ". $row['Lastname'];
                 ?> 
                <b>Welcome!  </b><?php echo $name; ?><span class="badge badge-info"> <?Php include('announce.php');?></span></a>
				
					<li>
				
					<li>
						<a href="logout.php"><i class="icon-off"></i> Log Out</a>
					</li>
					</ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>


        </div><!-- /.nav-collapse -->

      </div><!-- /.container -->
    </div><!-- /.navbar -->

    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">


          
           <div class="jumbotron">
            <h2>Announcement</h2>
          </div>



       <div class="row row-offcanvas row-offcanvas-right">

        

<div class="well">

 <?php
      $id=$_GET['id'];
                $query = mysql_query("select * from tb_announcement {$statement} where announcementID='$id' LIMIT {$startpoint} , {$limit}   ") or die(mysql_error());
             $row = mysql_fetch_array($query);
         ?>


        <div class="row">

           
            <div class="col-md-5">
            <img src="server/ADMIN/SERVER/ADS/<?php echo $row['image'];?>" /> 
            <br /><b><U><?php echo $row['name'];?></U></b>
            <br /> Date: <?php echo date("F j, Y - h:i A ", strtotime($row['date'])) ?>
                <br /> <?php echo $string=$row['detail'];?>
                <br />
                <a class="btn btn-primary" href="user_account2.php">BACK</a>
           
        </div>
        
           <form method="post">
					<hr/>
					Comment:<br/>
					<textarea name="comment_content" rows="2" cols="44" style="text-align:center;" placeholder=".........Type your comment here........" required></textarea><br>
					<input class="btn-success" type="submit" name="comment">
        </form>
        
        <?php
		if (isset($_POST['comment'])){
		$comment_content = $_POST['comment_content'];
		mysql_query("insert into comment (announcementID,Comment,date_posted,CustomerID) values ('$id','$comment_content','".strtotime(date("Y-m-d h:i:sa"))."','$ses_id')") or die (mysql_error());
        }
?>
<script>
window.location('announcement_detail.php');                     
</script>

	<?php 
    	$comment_query = mysql_query ("SELECT * ,UNIX_TIMESTAMP() - date_posted AS TimeSpent FROM comment LEFT JOIN customers on customers.CustomerID = comment.CustomerID where announcementID = '$id'") or die (mysql_error());
								while ($comment_row=mysql_fetch_array($comment_query)){
								$comment_id = $comment_row['CustomerID'];
								$comment_by = $comment_row['Firstname']." ".$comment_row['Lastname'];
                              			
							?>
                            <hr />
					<br/><font color="blue"><b><?php echo $comment_by; ?></b></font>
                    <br /><font color="black"><?php echo $comment_row['Comment']; ?></font>   
					<br/>
                    
                  
                 

							<?php
                            				
								$days = floor($comment_row['TimeSpent'] / (60 * 60 * 24));
								$remainder = $comment_row['TimeSpent'] % (60 * 60 * 24);
								$hours = floor($remainder / (60 * 60));
								$remainder = $remainder % (60 * 60);
								$minutes = floor($remainder / 60);
								$seconds = $remainder % 60;
								if($days > 0)
								echo date('F d, Y - H:i:sa', $comment_row['date_posted']);
								elseif($days == 0 && $hours == 0 && $minutes == 0)
								echo "A few seconds ago";		
								elseif($days == 0 && $hours == 0)
								echo $minutes.' minutes ago';
							?>
                          
                            <?php
							}
							?>
        
        <br/><br/>
          

            <div class="col-lg-12">
                <ul class="pagination">
                     <?php
    echo pagination($statement,$limit,$page);
?>      
                </ul>
            </div>

      
</div>

          
        </div><!--/span-->

        
     

      </div><!--/row-->
</div>


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
