<?php include('../../include/connect.php'); ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../../img/aalogo.jpg">

    <title>DreamStar Online Mobile Store</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap.css" rel="stylesheet">

    <link href="css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
  <style>
   body {
    background-image: url("background1.JPG");
    background-repeat: no-repeat;
}
</style>
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


<table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                             
                <p><a href="add_new_user.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Add User</a></p>
              
                                <thead>
                                    <tr>
                                      <th><font color="orange">User Type</font></th>  
                                        <th><font color="orange">Full Name</font></th>
                                        <th><font color="orange">Username</font></th>
                                        <th><font color="orange">Password</font></th>
                                        <th><font color="orange">Actions</font></th> 
                                    </tr>
                                </thead>
                                <tbody>
       <?php  $user_query=mysql_query("select * from tb_user")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                    $id2=$row['utype']; 
                    $id1=$row['userID'];
                    
          
                    $query2=mysql_query("select * from user_type where typeID='$id2'")or die(mysql_error());
          $row2=mysql_fetch_array($query2);
          
             ?>
                  <tr class="del<?php echo $id1 ?>">
                    <td><font color="white"><?php echo $row2['user_type']; ?></font></td>
                  <td><font color="white"><?php echo $row['Employee']; ?></font></td>                            
                    <td><font color="white"><?php echo $row['username']; ?></font></td>
                     <td ><font color="white"><?php echo $row['password']; ?></font> </td> 
                                    <td>
                    <a rel="tooltip"  title="Delete" id="<?php echo $id; ?>" onclick="return confirm('Are you sure you want to delete?')" href="delete_user.php?id=<?php echo $row['userID'];?>" data-toggle="modal"    class="btn btn-danger"><i class="icon-trash icon-large"></i></a>
                   <a  rel="tooltip"  title="Edit" id="<?php echo $id; ?>"  href="edit_user.php?id=<?php echo $row['userID'];?>" class="btn btn-info"><i class="icon-list icon-large"></i></a>
                                    </td>
                  
                                    </tr>
                  <?php  }  ?>
                           
                                </tbody>
                            </table>

          
        </div><!--/span-->

        

        
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
          <a href="index.php" class="list-group-item">Home</a>
            <a href="user.php" class="list-group-item active">User List</a>
           <a href="user_type.php" class="list-group-item">User Type</a>
           <a href="admin_report.php" class="list-group-item">User Report</a>
           <a href="Recovery.php" class="list-group-item">Database Recovery</a>
          </div>
        </div><!--/span-->

      </div><!--/row-->

      <hr>

      <?php include('footer.php');?>

    </div><!--/.container-->



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="offcanvas.js"></script>
  </body>
</html>
