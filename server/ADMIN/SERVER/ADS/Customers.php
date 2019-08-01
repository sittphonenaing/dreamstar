<?php include('../../../include/connect.php');
include('../sessions.php');
 ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../../../img/aalogo.jpg">

    <title>DreamStar Online Mobile Store</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="css/font-awesome.css" rel="stylesheet" media="screen">

   

    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

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
    
<form method="post">  
<div>
<Center>
<input type="image" src="../../../assets/img/search.png"   alt="Search" name="submit" title="Search" />
<input type="text" name="search" placeholder="Search for..."> <p>(<b>Note: You can search the Firstname and Lastname of the Customer Only.)</b></p>
</Center>
<br /></div>
</form>     
        
<form action="Delete_Customer.php" method="post">
    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">
      <p><a href="index.php"><input type="button" class="btn btn-success" value="BACK" /></a>
      <input type="submit" onclick="return confirm('Are you sure you want to delete?')" class="btn btn-danger" value="Delete" name="delete"></p>

<table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                  
<script language="JavaScript">
function toggle(source) {
checkboxes = document.getElementsByName('selector[]');
for(var i=0, n=checkboxes.length;i<n;i++) {
checkboxes[i].checked = source.checked;
}
}
</script>           
                                <thead>
                                    <tr>
										<th><input type="checkbox" onClick="toggle(this)">  Customer ID</th>
                                        <th>First Name</th>
                                        <th>Middle Name</th>
                                        <th>Last Name</th>
                                         <th>Gender</th>
                                         <th>Date Created</th>
                                         <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                               <!---------------search engine---------->
                                <?php
	$key="";
	if(isset($_POST['search']))
		$key=$_POST['search'];
	
	if($key !="")
		$sql_sel=mysql_query("SElECT * FROM customers WHERE Firstname  like '%$key%' or Lastname like '%$key%'");
    else if($key !="" )
         $sql_sel=mysql_query("SElECT * FROM customers WHERE Firstname and Lastname like '%$key%'");
	else
		 $sql_sel=mysql_query("SELECT * FROM customers")or die(mysql_error());
       
   while($row=mysql_fetch_array($sql_sel)){
                  $id=$row['CustomerID'];
               
    ?><!--------------------end code for search engine-------->
    


      
                    
                  <tr class="del<?php echo $id ?>">
                  <td><input name="selector[]" type="checkbox"  value="<?php echo $row['CustomerID']; ?>"> <?php echo $row['CustomerID']; ?></td>                            
                                    <td><?php echo $row['Firstname']; ?></td>
                                     <td ><?php echo $row['Middle_name']; ?> </td> 
                                      <td ><?php echo $row['Lastname']; ?> </td> 
                                      <td ><?php echo $row['Gender']; ?> </td>
                                      <td><?php echo $row['Date_created']; ?></td> 
                                    <td>
                   <a  rel="tooltip"  title="View" id="<?php echo $id; ?>"  href="View_Customer.php?id=<?php echo $row['CustomerID'];?>" class="btn btn-info">View</a>
                   <a  rel="tooltip"  title="Data will be move to History" id="<?php echo $id; ?>" onclick="return confirm('Are you sure you want to move to Archive?')"  href="Archive.php?id=<?php echo $row['CustomerID'];?>" class="btn btn-success">Archive</a>
                                    </td>
                  
                                    </tr>
                                    	
                  <?php  }  ?>
                           
                                </tbody>
                            </table>

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
</form>