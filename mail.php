<?php 
	include('include/connect.php');
if(isset($_POST['submit'])){
$emails=$_POST['email'];
$query="select * from customers where Email='$emails'";
$result=mysql_query($query) or die(error);
if(mysql_num_rows($result)){
$code=rand(100,999);
$new_pass = md5($code);
$emails=$_POST['email'];
mysql_query("update customers set Password='$new_pass' where Email='$emails'");
$subject = 'New Password';
$emails=$_POST['email'];
$email = htmlspecialchars($emails);
$message = "Good Day this is DreamStar Online Mobile Store Solution Inc. <br> Your Requested Password is".$code."<br>"."Don't forget to change your password!<br>"."Thank you!";
$to = htmlspecialchars($emails);
mail($to, $subject, $message);
?>
<script>
alert('Your New Password is Send to your Email');
window.location="index.php";
</script>
<?php
}
else
{
    ?>
<script>
alert('No user exist with this Email address');
 window.location='forgotpass.php';</script>
 <?php
}
}

?>

