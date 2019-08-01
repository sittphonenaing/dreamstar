<?php  
include('../../../include/connect.php');    
include('../SERVER/sessions.php');       
       $id=$_GET['id'];
       $query=mysql_query("select * from customers where CustomerID=$id");
        $row=mysql_fetch_array($query);
  
       //$CustomerID=$_POST['CustomerID'];
       $firstname=$row['Firstname'];      
       $Middlename=$row['Middle_name'];
       $lastname=$row['Lastname'];
       $birthday=$row['Birthday'];
       $address=$row['Address'];
       $city=$row['City'];
       $cnumber=$row['Contact_number'];
       $gender=$row['Gender'];
       $email=$row['Email'];
       $password=$row['Password'];
       $new=$row['Date_created'];

    mysql_query("insert into customer_archive (CustomerID,Middle_name,Gender,Firstname,Lastname,Email,Password,Contact_number,Address,City,Birthday,Date_created) 
    values('$id','$Middlename','$gender','$firstname','$lastname','$email','$password','$cnumber','$address','$city','$birthday','$new')") or die(mysql_error());
        ?>
 <script type="text/javascript">
        alert("Customer Information is now saved in Recent Activity.");
          window.location= "Customers.php";
 </script>
       <?php
       $result1 = mysql_query("select * from tb_user where userID=$userID");
              $row1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail='CustomerID '.$id .' Name= '.$firstname.' was move to Archive';
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Move','$detail')");
       
	$result = mysql_query("DELETE FROM customers where CustomerID='$id'");
?>
   