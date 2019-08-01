<?php
/* Script name: uploadFile.php
* Description: Uploads a file via HTTP with a POST form.
*/
if(!isset($_POST['Upload'])) 
{
include("add_new_products.php");
}
else 
{
if($_FILES["image"]["tmp_name"] == "none") 
{
echo "<p style='font-weight: bold'>
File did not successfully upload. Check the
file size. File must be less than 500K.</p>";
include("form_upload.inc");
exit();
}
if(!ereg("image",$_FILES['pix']['type']))
{
echo "<p style='font-weight: bold'>
File is not a picture. Please try another
file.</p>";
include("form_upload.inc");
exit();
}
else
{
$destination='c:\data'."\\".$_FILES['pix']['name'];
$temp_file = $_FILES[‘pix’]['tmp_name'];
move_uploaded_file($temp_file,$destination);
echo "<p style='font-weight: bold'>
The file has successfully uploaded:
{$_FILES['image']['name']}
({$_FILES['image']['size']})</p>";
}
}
?>