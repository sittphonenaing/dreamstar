<?php
ob_start();
session_start();

if (!isset($_SESSION['userID'])){
header('location:../../index.php');
}

$userID = $_SESSION['userID'];

?>