<html>
<body>
<div align="center">
<div align="center">
<?php
	$file=$_POST['download'];
?>
<form action ="download.php" method= "post">
  <p>Download File:</p>
  <p>
    <select name="file" >
      <br>
      <p>
      </p>
      <option><?php echo $file.".sql"; ?></option>
    </select>
    <p>
    <input name="submit" type="submit" value="Download"/>
</p>
</form>

<p> 
</div>
</body>
</html>

