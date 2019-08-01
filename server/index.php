<?php include('include/connect.php');?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../img/aalogo.jpg">

    <title>DreamStar Online Mobile Store</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" type="text/css" href="style.css" />

  </head>

  <body>

    <div class="container">


 
<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
   
          <h1 class="text-center"><font color="black"><B>ADMINISTRATOR PAGE</B></font></h1>
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block" method="post">

          <?php
                                if (isset($_POST['submit'])) {
                
                      function clean($str) {
                                        $str = @trim($str);
                                        if (get_magic_quotes_gpc()) {
                                            $str = stripslashes($str);
                                        }
                                        return mysql_real_escape_string($str);
                                    }
                                    $username = clean($_POST['username']);
                                    $password = clean($_POST['password']);
                                    $pass=md5($password); 
                  
                                    $query = mysql_query("select * from tb_user where username='$username' and password='$pass'") or die(mysql_error());
                                    $count = mysql_num_rows($query);
                                    $row = mysql_fetch_array($query);
                                    $name=$row['Employee'];
                  
                  $utype_id = "SELECT utype FROM tb_user WHERE username='$username'";
                  $result2 = mysql_query($utype_id);
                  $result3 = mysql_fetch_row($result2);


                           if ($count > 0) {
                              session_start();
                            session_regenerate_id();
                              $_SESSION["userID"]=$row['userID'];
                              $id=$_SESSION["userID"];
                              
                                       $sql="select * from tb_user WHERE username='".$username."'";
      $result=mysql_query($sql);
      while($row=mysql_fetch_row($result)){                      
        
        switch($result3[0]){
                case '3':


date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
mysql_query("insert into loginout_serverhistory(AdminID,User,Name,Time_in,Time_out)
values('$id','$username','$name','$date','')")or die (mysql_error());
echo "<script>window.location.replace('ADMIN/OOS/index.php')</script>";
          
             session_write_close();
                        break;
            
            case '2':
            date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
mysql_query("insert into loginout_serverhistory(AdminID,User,Name,Time_in,Time_out)
values('$id','$username','$name','$date','')")or die (mysql_error());
echo "<script>window.location.replace('ADMIN/AS/index.php')</script>";
        
              session_write_close();
                        break;

                        case '1':
                        date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
mysql_query("insert into loginout_serverhistory(AdminID,User,Name,Time_in,Time_out)
values('$id','$username','$name','$date','')")or die (mysql_error());
echo "<script>window.location.replace('ADMIN/ADS/index.php')</script>";
              
              session_write_close();
                        break;

              case '4':
              echo "<script>window.location.replace('ADMIN/SERVER/index.php')</script>";
            
              session_write_close();
                        break;
          
                        default:
          echo "<script>window.location.replace('index.php?attempt=unauthorized')</script>";
                        break;
             }
      }
                                    } else {

                     session_write_close();
                                        ?>
                    
                    <br/>
                                             <div class="alert alert-danger"><i class="icon-remove-sign"></i>&nbsp;Please Check Your Username And Password</div>
                                      
                                        <?php
                                    }
                                }
                                ?>



            <div class="form-group inset">
              <img src="name.png"><input type="text" name="username" class="form-control input-lg" placeholder="Username" required/>
            </div>
            <div class="form-group">
              <img src="pass.png"><input type="password" name="password" class="form-control input-lg" placeholder="Password" required/>
            </div>
            <div class="form-group">
              <button name="submit" type="submit" class="btn btn-primary btn-lg btn-block">Sign In</button>
  
            </div>
          </form>
                          
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
         
      </div>  
      </div>
  </div>
  </div>
</div>

      <!-- Example row of columns -->
      

      <!-- Site footer -->
 
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
