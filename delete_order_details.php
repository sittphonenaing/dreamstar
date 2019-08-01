<?php
include('include/connect.php');
include('include/session.php');
$get_id=$_GET['id'];

mysql_query("delete from order_details where Orderdetailsid='$get_id'")or die(mysql_error());

$query3=mysql_query("select * from order_details where CustomerID='$ses_id' and orderid=''") or die (mysql_error());
$count2=mysql_num_rows($query3);
?>

<?php
	if($count2=="0" ){
	   
?>
<script type="text/javascript">
        alert("Deleted successfully");
          window.location= "user_products.php";
</script>
<?php
	}else{
?>

<script type="text/javascript">
        alert("Deleted successfully");
          window.location= "product_summary.php";
</script>

<?php
	}
?>
