<?php include('../../include/connect.php'); include('../SERVER/sessions.php'); ?>
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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
   <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

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

  <?php
                                    if (isset($_POST['submit'])) {

                                        $id = $_GET['id'];
                                   $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
                                $image_name = addslashes($_FILES['image']['name']);
                                $image_size = getimagesize($_FILES['image']['tmp_name']);
//
                                move_uploaded_file($_FILES["image"]["tmp_name"], "../SERVER/ADS/upload/" . $_FILES["image"]["name"]);
                                $pic = "upload/" . $_FILES["image"]["name"];                                
                                        
                         mysql_query("update tb_announcement
          set image='$pic' where announcementID='$id'") 
                     or die(mysql_error());
                     
                     
                     $result1 = mysql_query("select * from tb_user where userID=$userID");
              $row1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail="image=$pic where announcementID=$id was Updated";
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Updated','$detail')");
       
                                            ?>

                                         
                      <script type="text/javascript">
                          alert("Updated succesfully");
                       window.location= "announcement.php";
                      </script>

                                            <?php
                                    }
                                    ?>

<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">
  <?php 
$id = $_GET['id'];
$query=mysql_query("select * from tb_announcement where announcementID='$id'") or die (mysql_error());
$row=mysql_fetch_array($query);
  ?>

       <fieldset> 
                           <div id="legend">
                                <legend class="">Update Announcement</legend>
                            </div> 
       </fieldset>    

<div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">What</label>
    <div class="col-sm-10">
      <input type="text" name="name" value="<?php echo $row['name'];?>" class="form-control" id="inputEmail3"  readonly/>
    </div>
  </div>

   <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Image</label>
    <div class="col-sm-10">
      <input type="file" name="image">
    </div>
  </div>

     <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">When</label>
    <div class="col-sm-10">
  <div class="input-group date form_datetime col-md-5" data-link-field="dtp_input1">
 <input class="form-control input-large"  value="<?php echo $row['date'];?>" onchange="validation()" size="50" id="sched" type="text" name="date" readonly/>
 <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
    </div>
  </div> 



  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Where</label>
    <div class="col-sm-10">
      <input type="text" name="location"   value="<?php echo $row['place'];?>" class="form-control" id="password"  readonly/>
    </div>
  </div>


    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Details</label>
    <div class="col-sm-10">
      <textarea name="details" style="resize:none;" class="form-control"  readonly/><?php echo $row['detail'];?></textarea>
    </div>
  </div> 



  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit"  onclick="validation()"  name="submit" class="btn btn-success">Submit</button>
    </div>
  </div>



</form>
</div>



          
        </div><!--/span-->
       
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
             <a href="index.php" class="list-group-item ">Home</a>
            <a href="Customers.php" class="list-group-item">Customers<img src="customer.png"></a>
            <a href="Customer_list.php" class="list-group-item">Customer List<img src="customer.png"></a>
			<a href="announcement.php" class="list-group-item active">Announcement<img src="head.png"></a>
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



<script type="text/javascript" src="../js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    forceParse: 0,
        showMeridian: 1
    });
  $('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0
    });
  $('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 1,
    minView: 0,
    maxView: 1,
    forceParse: 0
    });
</script>



  </body>
</html>
