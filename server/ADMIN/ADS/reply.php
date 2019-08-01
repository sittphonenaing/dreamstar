<?php
include('../../../include/connect.php');
include('../SERVER/sessions.php'); 
$id=$_GET['id'];
$query1=mysql_query("select * from tb_user where userID='$userID'");
$row1=mysql_fetch_array($query1);
$query=mysql_query("select * from message where ID='$id'");
$row=mysql_fetch_array($query);
$cusid=$row['CustomerID'];
$query2=mysql_query("select * from tb_sentmessage where CustomerID='$cusid'");
$row3=mysql_fetch_array($query2);
?>
 <link rel="stylesheet" href="../../../assets/bootstrap.min.css">
  <script src="../../../assets/jquery.min.js"></script>
  <script src="../../../assets/bootstrap.min.js"></script>

<form method="post">
<input class="btn btn-success" name="readonly" type="hidden" value="<?php echo $row3['CustomerID']; ?>" />

<div class="form group col-sm-5">
<b>Recipient:</b> <input type="text" class="form-control" name='recipient' value="<?php echo $row['Name']; ?>" readonly/>
<b>Email:</b> <input type="text" class="form-control" name='email' value="<?php echo $row['Email'];?>" readonly/>
<b>From Admin:</b><input type="text" class="form-control" name="admin" value="<?php echo $row1['Employee']; ?>" readonly/><br />
</div>
<div class="col-sm-10">
<b>Message:</b> <textarea class="form-control" name="reply"></textarea><br />
<input class="btn btn-success" name="send" type="submit" value="Send" />
<input class="btn btn-success" title="Admin reply message to the customer" name="read" type="submit" value="Sent Messages" />
<input class="btn" type="submit" name="back" value="Back" />
</div>
</form>


<?php
	if(isset($_POST['send'])){
	   $message=$_POST['reply'];
       if(empty($message)){
        echo '<script>alert("Message is empty!, Please fill out the field")</script>';
        }else{
	   $customer=$row['Name'];
       $email=$row['Email'];
       $admin=$row1['Employee'];
       $message=$_POST['reply'];
       date_default_timezone_set('Asia/Manila');
       $new =date('F j, Y g:i:a  ');
	   mysql_query("Insert into reply_message(Primary_key,CustomerID,Recipient,Email,From_admin,Message,Date_created)values('','$cusid','$customer','$email','$admin','$message','$new')");
    	mysql_query("Insert into tb_sentmessage(Primary_key,CustomerID,Recipient,Email,From_admin,Message,Date_created)values('','$cusid','$customer','$email','$admin','$message','$new')");
?>
<script>
alert('Message Sent!');

</script>

<?php  
}
  }
    if(isset($_POST['back'])){
?>
<script>
window.location="messages_box.php";
</script>
<?php
    }
?>
<!-- message reply for the specific customer -->

<?php
	if(isset($_POST['read'])){
	   $readonly=$_POST['readonly'];
?>

<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%">
<thread>
<tr bgcolor="#cccccc" style="margin-bottom:10px;">
<th><div align="center">CustomerID</div></th>
<th><div align="center">Recipient</div></th>
<th><div align="center">Email</div></th>
<th><div align="center">Admin Name</div></th>
<th><div align="center">Message</div></th>
<th><div align="center">Date</div></th>
</tr>
</thread>
<tbody>
<?php    
	
	if($readonly != "0")
		$quer=mysql_query("SElECT * FROM tb_sentmessage WHERE CustomerID='$readonly'");              
    while($row2=mysql_fetch_array($quer)){
?>
<tr>
<td><?php echo $row2['CustomerID']; ?></td>
<td><?php echo $row2['Recipient']; ?></td>
<td><?php echo $row2['Email']; ?></td>
<td><?php echo $row2['From_admin']; ?></td>
<td>
<form method="POST">
<input type="hidden" name="message" value="<?php echo $row2['Message']; ?>" />
<input type="hidden" name="recipient" value="<?php echo $row2['Recipient']; ?>" />
<input type="hidden" name="dels" value="<?php echo $row2['Primary_key']; ?>" />
<input type="submit" name="submit" class="btn btn-primary" value="OPEN" />
</form>
</td>
<td><?php echo $row2['Date_created']; ?></td>
</tr>
<?php
	}
?>
</tbody>
</table>
<?php
    }
?>

<?php
	if(isset($_POST['submit'])){
	   $mess=$_POST['message'];
       $rec=$_POST['recipient'];
       $delete=$_POST['dels'];
?>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div class="well">
          <strong>Recipient</strong>
<input type="text" class="form-control" value="<?php echo $rec; ?>" readonly />
          <strong>SENT MESSAGE</strong>
<textarea readonly class="form-control"><?php echo $mess; ?></textarea>
</div>

        </div>
        <div class="modal-footer">
        <form method="post">
           <input class="btn btn-success" name="readonly" type="hidden" value="<?php echo $row3['CustomerID']; ?>" />
         <input class="btn btn-success" name="deletes" type="hidden" value="<?php echo $delete; ?>" />
           <input type="submit" name="del" class="btn btn-danger"  value="DELETE">
          <input type="submit" name="read" class="btn btn-danger"  value="Close">
        </div>
      </div>
    </div>
  </div>
  </form>
      <script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
    });
</script>
<?php
	}
?>
<?php
	if(isset($_POST['del'])){
	   $del=$_POST['deletes'];
       $id=$_POST['readonly'];

$result= mysql_query("select * from tb_sentmessage where CustomerID='$id'");
$r=mysql_fetch_array($result);
$result1 = mysql_query("select * from tb_user where userID=$userID");
$r1=mysql_fetch_array($result1);
    date_default_timezone_set('Asia/Manila');
    $date=date('F j, Y g:i:a  ');
    $user=$row1['username'];
    $detail='Sent Message to '.$r['Recipient']  .' was deleted by admin ' . $r1['Employee'];
              mysql_query("insert into audit_trail(ID,User,Date_time,Outcome,Detail)values('$userID','$user','$date','Deleted','$detail')");
       
       mysql_query("delete from tb_sentmessage where Primary_key='$del'");
       
?>
<script>
alert("Successfully Deleted!");
</script>
<?php
	}
?>