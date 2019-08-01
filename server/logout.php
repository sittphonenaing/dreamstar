<?php
include('include/connect.php');
ob_start();
session_start();

if (!isset($_SESSION['userID'])){
header('location:../../index.php');
}

$userID = $_SESSION['userID'];

$query=mysql_query("select * from tb_user where userID=$userID");
$row=mysql_fetch_array($query);
date_default_timezone_set('Asia/Manila');
$date=date('F j, Y g:i:a ');

mysql_query("update loginout_serverhistory set Time_out='$date' where AdminID='$userID'");

	session_destroy();
	echo "<script language=\"Javascript\" type=\"text/javascript\">
	alert(\"You are logged out.\"); 
	window.location=\"index.php\";
	</script>";
?>