<?php include('../include/connect.php');

 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../assets/ico/icon.png">

    <title>Metallfit Incorporation</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/bootstrap.css" rel="stylesheet">

    <link href="../css/bootstrap-theme.min.css" rel="stylesheet">



    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type='text/javascript'>
function validation(){
    //var CheckPassword = /^[A-Za-z]\w{7,14}$/; - numbers and characters and uppercase
    //var CheckPassword = /^[a-z]\w{7,14}$/; -
     var letterexp = /^[a-zA-Z]+$/;
    var quanti = 32; 
 if (document.getElementById('contact').value.match(letterexp))
 {
 alert('Please input numbers only');
 document.getElementById('contact').value='';
 }

  var date1 = new Date();
        var  dob= document.getElementById("dob").value;
        var date2=new Date(dob);
            var y1 = date1.getFullYear(); //getting current year
            var y2 = date2.getFullYear(); //getting dob year
            var ages = y1 - y2;           //calculating age 
        if(+ages<=16){
            alert("Age below 17 is not allowed to donate");
             document.getElementById('dob').value='';
        }


}
</script>

<script type="text/javascript">
function changeVal(t1){
if (!/^[\0-9]*$/.test(t1.value)) {//validates for numbers
alert('Only numbers allowed!');
t1.value = t1.value.replace(/[^\A-Za-z-'.']/g,'');
document.getElementById('contact').value=''
}
}
</script>

<script type="text/javascript">
function changeVal(t1){
if (!/^[\0-9]*$/.test(t1.value)) {//validates for numbers
alert('Only numbers allowed!');
t1.value = t1.value.replace(/[^\A-Za-z-'.']/g,'');
document.getElementById('contact').value=''
document.getElementById('salary').value=''
}
}
</script>

    <script type="text/javascript" src="jquery-1.2.6.min.js"></script>
    
    <script src="jquery.js" type="text/javascript"></script>
<script src="jquery.maskedinput.js" type="text/javascript"></script>



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
                                        $email = $_POST['email'];
                                         $pass = md5($_POST['password']);                                     
                                        $fname = $_POST['fname'];
                                        $mname = $_POST['mname'];                                     
                                        $lname= $_POST['lname'];
                                        $add= $_POST['address'];
                                        $cnumber= $_POST['cnumber'];
                                        $bdate=  $_POST['bdate'];
                                        $dep= $_POST['dep'];
                                        $empstat= $_POST['empstat'];
                                        $pos=  $_POST['position'];
                                        $sal= $_POST['salary'];
                                        $gsis= $_POST['gsis'];
                                        $pagibig=  $_POST['pagibig'];
                                        $philhealth= $_POST['philhealth'];
                                        $sss= $_POST['sss'];
                                        $tin=  $_POST['tin'];

                                        $date=  date('M-Y-D');

                         mysql_query("update tb_employee set
          Firstname='$fname',Midname='mname',Lastname='$lname',Address='$add',Email='$email',
          Password='$pass',Contact_number='$cnumber',Department='$dep',Position='$pos',
          Bday='$bdate',Gsis='$gsis',Pagibig='$pagibig',Philhealth='$philhealth',
          Sss='$sss',Tin='$tin',emp_stats='$empstat',salary='$sal' where EmployeeID='$id'") 
                     or die(mysql_error());
                                            ?>

                                         
                      <script type="text/javascript">
                                                alert("Employee profile updated succesfully");
                                                    window.location= "employee.php";
                                            </script>

                                            <?php
                                    }
                                    ?>

<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">
       
       <?php 

$query=mysql_query("select * from tb_employee where EmployeeID='$ses_id'") or die (mysql_error());
$row=mysql_fetch_array($query);
        $empstat=$row['emp_stats'];
?>

       <fieldset> 
                           <div id="legend">
                                <legend class="">Account Details
<a href="employee.php"><input type="button" class="btn btn-default" value="Cancel"></a>
                                </legend>
                            </div> 
       </fieldset>    

       <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" name="email"  class="form-control" value="<?php echo $row['Email'];?>" id="inputEmail3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" name="password"   class="form-control" value="<?php echo $row['Password'];?>" id="password" required/>
    </div>
  </div>

         <fieldset> 
                           <div id="legend">
                                <legend class="">General Information</legend>
                            </div> 
       </fieldset> 

  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Firstname</label>
    <div class="col-sm-10">
      <input type="text" name="fname" class="form-control" value="<?php echo $row['Firstname'];?>" id="inputEmail3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Middlename</label>
    <div class="col-sm-10">
      <input type="text" name="mname" class="form-control" value="<?php echo $row['Midname'];?>" id="inputEmail3" required/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Lastname</label>
    <div class="col-sm-10">
      <input type="text" name="lname" class="form-control" value="<?php echo $row['Lastname'];?>" id="inputPassword3" required/>
    </div>
  </div>

       <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Gender</label>
    <div class="col-sm-10">
      <input type="radio" name="gender" value="M">Male
<input type="radio" name="gender" value="F">Female
    </div>
  </div>

    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-10">
      <input type="text" name="address" class="form-control" value="<?php echo $row['Address'];?>" id="inputPassword3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Contact Number</label>
    <div class="col-sm-10">
      <input type="text" name="cnumber" class="form-control" onkeyup="changeVal(this)" id="contact"   value="<?php echo $row['Contact_number'];?>"  required/>
    </div>
  </div>


<div class="form-group">
  <label for="inputPassword3" class="col-sm-2 control-label">Birthday</label>
    <div class="col-sm-10">
      <input type="date" id="dob" name="bdate" value="<?php echo $row['Bday']; ?>" class="form-control" required/>
    </div>
  </div>


 <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Department</label>
    <div class="col-sm-10">
       <select  class="form-control" id="inputPassword3" name="dep" required/>
        <?php
        $dep=$row['Department'];
        $query2=mysql_query("select * from Department where dep_id='$dep'") or die (mysql_error());
        $row2=mysql_fetch_array($query2);
        ?>
        <option value="<?php echo $row2['dep_id'];?>"><?php echo $row2['dep_name'];?></option> 
        <?php
        $query2=mysql_query("select * from Department") or die (mysql_error());
        while($row2=mysql_fetch_array($query2)){
        ?>
        <option value="<?php echo $row2['dep_id'];?>"><?php echo $row2['dep_name'];?></option>
        <?php } ?>
      </select>
    </div>
  </div>

      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Position</label>
    <div class="col-sm-10">
      <select  class="form-control" id="inputPassword3" name="position"  required/>
        <?php
        $pos=$row['Position'];
        $a=mysql_query("select * from tb_position where posID='$pos'") or die (mysql_error());
        $b=mysql_fetch_array($a);
        ?>
        <option value="<?php echo $b['posID'];?>"><?php echo $b['position'];?></option> 
        <?php
        $c=mysql_query("select * from tb_position") or die (mysql_error());
        while($d=mysql_fetch_array($c)){
        ?>
        <option value="<?php echo $d['posID'];?>"><?php echo $d['position'];?></option>
        <?php } ?>
      </select>
    </div>
  </div>



        <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Salary</label>
    <div class="col-sm-10">
      <input type="text" name="salary" onkeyup="changeVal(this)" value="<?php echo $row['salary'];?>" class="form-control" id="salary" required/>
    </div>
  </div>

   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Employement Status</label>
    <div class="col-sm-10">
       <select  class="form-control" id="inputPassword3" name="empstat" required/>
        <?php
        $query3=mysql_query("select * from emp_stat where statID='$empstat'") or die (mysql_error());
        $row3=mysql_fetch_array($query3);
        ?>
        <option value="<?php echo $row3['statID'];?>"><?php echo $row3['stats'];?></option>
        <?php
        $query3=mysql_query("select * from emp_stat") or die (mysql_error());
        while($row3=mysql_fetch_array($query3)){
        ?>
        <option value="<?php echo $row3['statID'];?>"><?php echo $row3['stats'];?></option>
        <?php } ?>
      </select>
    </div>
  </div>




       <fieldset> 
                           <div id="legend">
                                <legend class="">Personal Information</legend>
                            </div> 
       </fieldset>  

             <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">GSIS</label>
    <div class="col-sm-10">
      <input type="text" name="gsis" class="form-control" value="<?php echo $row['Gsis'];?>"  id="gsis" required/>
    </div>
  </div>

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Pag Ibig</label>
    <div class="col-sm-10">
      <input type="text" name="pagibig"  class="form-control" value="<?php echo $row['Pagibig'];?>" id="pagibig" required/>
    </div>
  </div>

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Philhealth</label>
    <div class="col-sm-10">
      <input type="text" name="philhealth" class="form-control" value="<?php echo $row['Philhealth'];?>"  id="philhealth" required/>
    </div>
  </div>

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">SSS</label>
    <div class="col-sm-10">
      <input type="text" name="sss" class="form-control" value="<?php echo $row['Sss'];?>"  id="ssn" required/>
    </div>
  </div>

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">TIN</label>
    <div class="col-sm-10">
      <input type="text" name="tin" class="form-control" value="<?php echo $row['Tin'];?>"  id="tin" required/>
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
            <a href="employee.php" class="list-group-item active">Employee</a>
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
  </body>
</html>
