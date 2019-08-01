<?php include('../../../include/connect.php') ?>

<style type="text/css">
<!--

a:link {
}
a:visited {
  text-decoration: none;
  color: #000000;
}
a:hover {
  text-decoration: none;
  color: #000000;
}
a:active {
  text-decoration: none;
  color: #000000;
}
-->
</style>
 <link rel="stylesheet" href="../../../assets/bootstrap.min.css">
  <script src="../../../assets/jquery.min.js"></script>
  <script src="../../../assets/bootstrap.min.js"></script>


                    <div align="center" style="margin-top:40px; height:80px;"><img src="../../../img/AA2000.JPG"><br /> 
 <B>Messages</B> </div>
 <br/>
 <br/> <br/>
<table border="1" align="center" cellpadding="0" cellspacing="0" style="width:100%"> 
          <thead>
            <tr bgcolor="#cccccc" style="margin-bottom:10px;">
          <th><div>Customer ID</div></th>
              <th><div align="center">Name</div></th>
               <th><div align="center">Email</div></th>
                <th><div align="center">Subject</div></th>
                <th><div align="center">Message</div></th>
                <th><div align="center">Date</div></th>
                <th><div align="center">Action</div></th>
               
                
            </tr>
          </thead>
          <tbody>
      <?php
        $user_query=mysql_query("select * from message")or die(mysql_error());
                  while($row=mysql_fetch_array($user_query)){
                  $id=$row['ID']; 
                  
                  $seen=$row['Status'];
                   ?>
                  <tr class="del<?php echo $id ?>">    
                  <td ><?php echo $row['CustomerID']; ?>   </td>                        
                                    <td><?php echo $row['Name']; ?></td>
                                     <td ><?php echo $row['Email']; ?> </td> 
                                      <td ><font size="2"><strong><?php echo $row['Subject']; ?></strong></font> </td> 
                                      <td >
                                      <?php
	                                   if($seen != 'Seen'){
                                       ?>
                                       
                                       <form method="post">
                                       <input type="hidden" name="message" value="<?php echo $id; ?>" />
                                       <font color="red" ><input type="submit" class="btn btn-danger" name="submit"  value="Unread" /></font>
                                       </form>
                                       <?php
	                                             }else{
                                        ?> 
                                      
                                     <form method="post">
                                       <input type="hidden" name="message" value="<?php echo $id; ?>" />
                                       <font color="blue" ><input type="submit" class="btn btn-primary"  name="submit"  value="Read" /></font>
                                       </form>
                                      <?php } ?>
                                      </td>
                                       <td><font size="2"><strong><?php echo $row['Date_created']; ?></strong></font></td>
                                       <td><a href="reply.php?id=<?php echo $id; ?>"><font color="blue">Reply</font></a><br /><a onclick="return confirm('Are you sure you want to delete?')" href="delete_message.php?id=<?php echo $id; ?>"><font color="red">Delete</font></a></td>
         
               </tr>
                  <?php  }  ?>
                  
          </tbody>
</table>
<?php
	if(isset($_POST['submit'])){
	$mes=$_POST['message'];
    $query=mysql_query("select * from message where ID='$mes'");
$row=mysql_fetch_array($query);
include('query_seen.php');
       ?>
         
    <!-- Trigger the modal with a button -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div class="well">
<b>Customer Name:</b> <input type="text" class="form-control" value="<?php echo $row['Name']; ?>" readonly/>
<b>Message:</b><center><textarea readonly class="form-control"><?php echo $row['Message']; ?></textarea></center><br />
</div>
<div class="col-sm-10">
<a href="reply.php?id=<?php echo $mes; ?>"><input class="btn btn-success" name="reply" type="submit" value="Reply" /></a>
<a onclick="return confirm('Are you sure you want to delete?')" href="delete_message.php?id=<?php echo $mes; ?>"><font color="red"><input type="submit" value="DELETE" class="btn btn-danger" /></font></a>
</div>
        </div>
        <div class="modal-footer">
        <form method="post">
        
          <input type="submit" name="" class="btn btn-danger"  value="Close">
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
