<?php 
$con = mysqli_connect("localhost","root","","AA2000");

$tables = array();
$query = mysqli_query($con, 'SHOW TABLES');
while($row = mysqli_fetch_row($query)){
     $tables[] = $row[0];
}

$result = "";
foreach($tables as $table){
$query = mysqli_query($con, 'SELECT * FROM '.$table);
$num_fields = mysqli_num_fields($query);

$result .= 'DROP TABLE IF EXISTS '.$table.';';
$row2 = mysqli_fetch_row(mysqli_query($con, 'SHOW CREATE TABLE '.$table));
$result .= "\n\n".$row2[1].";\n\n";

for ($i = 0; $i < $num_fields; $i++) {
while($row = mysqli_fetch_row($query)){
   $result .= 'INSERT INTO '.$table.' VALUES(';
     for($j=0; $j<$num_fields; $j++){
       $row[$j] = addslashes($row[$j]);
       $row[$j] = str_replace("\n","\\n",$row[$j]);
       if(isset($row[$j])){
		   $result .= '"'.$row[$j].'"' ; 
		}else{ 
			$result .= '""';
		}
		if($j<($num_fields-1)){ 
			$result .= ',';
		}
    }
   	$result .= ");\n";
}
}
$result .="\n\n";
}

//Create Folder
$folder = 'Backup_Data/';
if (!is_dir($folder))
mkdir($folder, 0777, true);
chmod($folder, 0777);

$date = date('m-d-Y'); 
$filename = $folder."backup_Data_".$date; 
$filing="backup_Data_".$date;
$handle = fopen($filename.'.sql','w+');
fwrite($handle,$result);
fclose($handle);

$backup=mysqli_query($con,"select * from backup_dbname");
$row0=mysqli_fetch_array($backup);
$Name=$row0['Name'];

if($filing == $Name){
  ?>
   <script type="text/javascript">
alert("Database Overwritten!");
window.location="Recovery.php";
         </script>
  <?php  
}else{
    $id=$_POST['id'];
    date_default_timezone_set('Asia/Manila');
    $new =date('F j, Y g:i:a  ');
    mysqli_query($con,"insert into backup_dbname(ID,Name,Date) values('$id','$filing','$new')") or die(mysql_error());
    ?>
    
    <script type="text/javascript">
alert("Database Backed Up Successfully! The Database saved in Folder: Backup_Data");
         window.location="Recovery.php";
         </script>
    <?php
}

?>

<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="style.css">
</head>
<body>


    
    
</body>
</html>