<?php
include('include/connect.php');
include('include/session.php');

$query=mysql_query("select * from customers where CustomerID=$ses_id");
$row=mysql_fetch_array($query);
date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
mysql_query("update loginout_history set Time_out='$date' where CustomerID='$ses_id'");

	
	session_destroy();
	echo "<script language=\"Javascript\" type=\"text/javascript\">
	alert(\"You are logged out.\"); 
	window.location=\"index.php\";
	</script>";
?>